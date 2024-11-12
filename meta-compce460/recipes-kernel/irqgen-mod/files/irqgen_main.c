/**
 * @file   irqgen.c
 * @brief  Support module for IRQ Generator IP block for the Real-Time System course.
 */

#include <linux/init.h>             // Macros used to mark up functions e.g., __init __ex
#include <linux/module.h>           // Core header for loading LKMs into the kernel
#include <linux/kernel.h>           // Contains types, macros, functions for the kernel
#include <linux/platform_device.h>  // Platform device related functions
#include <linux/of.h>               // Property reads from device tree
#include <linux/interrupt.h>        // Interrupt handling functions
#include <asm/io.h>                 // IO operations
#include <linux/slab.h>             // Kernel slab allocator
#include "irqgen.h"                 // Shared module specific declarations

#define DRIVER_NAME "irqgen"
#define PROP_COMPATIBLE "wapice,irq-gen" // Compatible property for device tree matching
#define PROP_WAPICE_INTRACK "wapice,intrack" // Custom intrack property from device tree

#define FPGA_CLOCK_NS 10 // Nanoseconds per FPGA clock cycle
#define IRQGEN_CTRL_ENABLE 0x1  // Replace 0x1 with the actual enable value
#define IRQGEN_CTRL_DISABLE 0x0 // Replace 0x0 with the actual disable value


int irqgen_probe(struct platform_device *pdev);
int irqgen_remove(struct platform_device *pdev);


// Kernel token address to access the IRQ Generator core register
void __iomem *irqgen_reg_base = NULL;

// Module data instance
struct irqgen_data *irqgen_data = NULL;

// Define of_device_id structure
static const struct of_device_id irqgen_of_ids[] = {
    { .compatible = PROP_COMPATIBLE },
    { /* end of list */ }
};


// Define platform driver structure
static struct platform_driver irqgen_driver = {
    .driver = {
        .name = DRIVER_NAME,
        .owner = THIS_MODULE,
        .of_match_table = irqgen_of_ids,
    },
    .probe = irqgen_probe,
    .remove = irqgen_remove,
};
MODULE_DEVICE_TABLE(of, irqgen_of_ids);

/* LKM Parameters */
static unsigned int generate_irqs = 0;
module_param(generate_irqs, uint, 0444);
MODULE_PARM_DESC(generate_irqs, "Amount of IRQs to generate at load time.");

static unsigned int loadtime_irq_delay = 0x3FFF;
module_param(loadtime_irq_delay, uint, 0444);
MODULE_PARM_DESC(loadtime_irq_delay, "Set the delay for IRQs generated at load time.");

static int parse_parameters(void)
{
    if (generate_irqs > IRQGEN_MAX_AMOUNT) {
        printk(KERN_WARNING KMSG_PFX "generate_irqs parameter exceeded maximum value: capped at %ld.\n", IRQGEN_MAX_AMOUNT);
        generate_irqs = IRQGEN_MAX_AMOUNT;
    }

    if (loadtime_irq_delay > IRQGEN_MAX_DELAY) {
        printk(KERN_WARNING KMSG_PFX "loadtime_irq_delay parameter exceeded maximum value: capped at %ld.\n", IRQGEN_MAX_DELAY);
        loadtime_irq_delay = IRQGEN_MAX_DELAY;
    }

    return 0;
}

// Returns the latency of last successfully served IRQ, in clock cycles
static inline u32 irqgen_read_latency_clk(void)
{
    return ioread32(IRQGEN_LATENCY_REG); 
}

static irqreturn_t irqgen_irqhandler(int irq, void *data)
{
    u32 idx = *(const u32 *)data;
    u32 ack = irqgen_data->intr_acks[idx];
    u32 regvalue = ioread32(IRQGEN_CTRL_REG);
    regvalue &= ~(IRQGEN_CTRL_REG_F_HANDLED | IRQGEN_CTRL_REG_F_ACK);
    regvalue |= FIELD_PREP(IRQGEN_CTRL_REG_F_HANDLED, 1) | FIELD_PREP(IRQGEN_CTRL_REG_F_ACK, ack);

    irqgen_data->total_handled++;
    irqgen_data->intr_handled[idx]++;

# ifdef DEBUG
    printk(KERN_INFO KMSG_PFX "IRQ #%d (idx: %d) received (ACK 0x%0X).\n", irq, idx, ack);
# endif

    iowrite32(regvalue, IRQGEN_CTRL_REG);

    if (irqgen_data->l_cnt < MAX_LATENCIES)
        irqgen_data->latencies[irqgen_data->l_cnt++] = irqgen_read_latency_clk();

    return IRQ_HANDLED;
}

/* Enable the IRQ Generator */
void enable_irq_generator(void)
{
    iowrite32(IRQGEN_CTRL_ENABLE, IRQGEN_CTRL_REG); 
}

/* Disable the IRQ Generator */
void disable_irq_generator(void)
{
    iowrite32(IRQGEN_CTRL_DISABLE, IRQGEN_CTRL_REG); 
}

/* Generate specified amount of interrupts on specified IRQ_F2P line */
void do_generate_irqs(uint16_t amount, uint8_t line, uint16_t delay)
{
    u32 regvalue = FIELD_PREP(IRQGEN_GENIRQ_REG_F_AMOUNT, amount) |
                   FIELD_PREP(IRQGEN_GENIRQ_REG_F_DELAY, delay) |
                   FIELD_PREP(IRQGEN_GENIRQ_REG_F_LINE, line);

    printk(KERN_INFO KMSG_PFX "Generating %u interrupts with IRQ delay %u on line %d.\n",
           amount, delay, line);

    iowrite32(regvalue, IRQGEN_GENIRQ_REG);
}

// Returns the latency of last successfully served IRQ, in ns
u64 irqgen_read_latency(void)
{
    return irqgen_read_latency_clk() * FPGA_CLOCK_NS;
}

// Returns the total generated IRQ count from IRQ_GEN_IRQ_COUNT_REG
u32 irqgen_read_count(void)
{
    return ioread32(IRQGEN_IRQ_COUNT_REG);
}

// Platform Driver Probe Function
static int irqgen_probe(struct platform_device *pdev)
{
    int retval = 0;
    int irqs_count = 0, irqs_acks = 0;
    struct resource *iomem_range;

    // Allocate irqgen_data structure dynamically
    DEVM_KZALLOC_HELPER(irqgen_data, pdev, 1, GFP_KERNEL);

    iomem_range = platform_get_resource(pdev, IORESOURCE_MEM, 0);
    if (!iomem_range) {
        dev_err(&pdev->dev, "Failed to get IOMEM resource.\n");
        return -ENODEV;
    }

    irqgen_reg_base = devm_ioremap_resource(&pdev->dev, iomem_range);
    if (IS_ERR(irqgen_reg_base)) {
        dev_err(&pdev->dev, "Failed to map IOMEM resource.\n");
        return PTR_ERR(irqgen_reg_base);
    }

    irqs_count = platform_irq_count(pdev);
    irqs_acks = of_property_count_u32_elems(pdev->dev.of_node, PROP_WAPICE_INTRACK);

    if (irqs_count <= 0 || irqs_acks < 0 || irqs_count != irqs_acks) {
        return -EINVAL;
    }

    // Allocate necessary arrays in irqgen_data structure
    DEVM_KZALLOC_HELPER(irqgen_data->intr_ids, pdev, irqs_count, GFP_KERNEL);
    DEVM_KZALLOC_HELPER(irqgen_data->intr_idx, pdev, irqs_count, GFP_KERNEL);
    DEVM_KZALLOC_HELPER(irqgen_data->intr_acks, pdev, irqs_count, GFP_KERNEL);
    DEVM_KZALLOC_HELPER(irqgen_data->intr_handled, pdev, irqs_count, GFP_KERNEL);

    irqgen_data->line_count = irqs_count;
    retval = of_property_read_u32_array(pdev->dev.of_node, PROP_WAPICE_INTRACK, irqgen_data->intr_acks, irqs_count);
    if (retval)
        return retval;

	int i;
    for (i = 0; i < irqs_count; ++i) {
        int irq_id = platform_get_irq(pdev, i);
        if (irq_id < 0)
            return irq_id;
        
        irqgen_data->intr_ids[i] = irq_id;
        irqgen_data->intr_idx[i] = i;

        retval = devm_request_irq(&pdev->dev, irq_id, irqgen_irqhandler, IRQF_SHARED, DRIVER_NAME, &irqgen_data->intr_idx[i]);
        if (retval != 0)
            return retval;
    }

    retval = irqgen_sysfs_setup(pdev);
    if (retval)
        return retval;

    return 0;
}

// Platform Driver Remove Function
static int irqgen_remove(struct platform_device *pdev)
{
    irqgen_sysfs_cleanup(pdev);
    return 0;
}

// Module Initialization
static int __init irqgen_init(void)
{
    int retval = parse_parameters();
    if (retval) {
        printk(KERN_ERR "Parameter parsing failed\n");
        return retval;
    }

    retval = platform_driver_register(&irqgen_driver);
    if (retval) {
        printk(KERN_ERR "platform_driver_register() failed\n");
        return retval;
    }

    enable_irq_generator();

    if (generate_irqs > 0)
        do_generate_irqs(generate_irqs, 0, loadtime_irq_delay);

    return 0;
}

// Module Exit
static void __exit irqgen_exit(void)
{
    printk(KERN_INFO "IRQ count: generated since reboot %u, handled since load %u.\n",
           irqgen_read_count(), irqgen_data->total_handled);
    printk(KERN_INFO "Latency for last handled IRQ: %lluns.\n", irqgen_read_latency());

    disable_irq_generator();
    platform_driver_unregister(&irqgen_driver);
}

module_init(irqgen_init);
module_exit(irqgen_exit);

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("Module for the IRQ Generator IP block for the real-time systems course");
MODULE_AUTHOR("Ashfak <mdashfakhaider.nehal@tuni.fi>");
MODULE_AUTHOR("Marcos <marcos.arribas-gomez@tuni.fi>");
MODULE_AUTHOR("Asri <mohamed.asri@tuni.fi>");
MODULE_AUTHOR("Jan Lipponen <jan.lipponen@wapice.com>");
MODULE_AUTHOR("Nicola Tuveri <nicola.tuveri@tut.fi>");
MODULE_VERSION("0.6");

