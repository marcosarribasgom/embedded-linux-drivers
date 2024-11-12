#ifndef __IRQGEN_HEADER
#define __IRQGEN_HEADER

#include <linux/platform_device.h>  // Platform device related functions

#ifdef DEBUG
# define DRIVER_NAME "irqgen_dbg"
# define DRIVER_LNAME "IRQ Generator module (DEBUG build)"
# define KMSG_PFX "IRQGEN_DBG: "
#else
# define DRIVER_NAME "irqgen"
# define DRIVER_LNAME "IRQ Generator module"
# define KMSG_PFX "IRQGEN: "

#endif

/*-
 * Structure for module data
 *
 * @line_count: number of registered IRQ lines
 * @intr_ids: the interrupt IDs allocated for the IRQ lines
 * @intr_idx: incremental index for each IRQ line
 * @intr_acks: the interrupt ACK values read from the device tree
 * @intr_handled: count of total handled interrupts per interrupt ID
 * @total_handled: count of total handled interrupts
 * @latencies: IRQ latencies from the IRQ generator, since last show; capacity is MAX_LATENCIES elems
 * @l_cnt: counts the received interrupts since last show
 */
struct irqgen_data {
    int line_count;
    u32 *intr_ids;
    u32 *intr_idx;
    u32 *intr_acks;
    u32 *intr_handled;
    u32 total_handled;

    u32 *latencies;
    u32 l_cnt;
};

#define MAX_LATENCIES 200           // The maximum number of latencies to store (this is limited by PAGE_SIZE for the sysfs show buffer)

// Control macros for enabling and disabling the IRQ generator
#define IRQGEN_CTRL_ENABLE 0x1       // Replace with actual enable value from hardware spec
#define IRQGEN_CTRL_DISABLE 0x0      // Replace with actual disable value from hardware spec

// Helper macro for memory allocation with error handling
#define DEVM_KZALLOC_HELPER(_var, _pdev, _cnt, _flags) \
    do { \
        (_var) = devm_kzalloc(&((_pdev)->dev), (_cnt) * sizeof(*(_var)), (_flags)); \
        if (IS_ERR((_var))) { \
            printk(KERN_ERR KMSG_PFX "Allocation of " #_var " failed.\n"); \
            retval = PTR_ERR((_var)); \
            goto err; \
        } \
    } while (0)


// Kernel token address to access the IRQ Generator core register
extern void __iomem *irqgen_reg_base;
#include "irqgen_addresses.h"       // Device specific addresses

// Module data instance
extern struct irqgen_data *irqgen_data;

void enable_irq_generator(void);
void disable_irq_generator(void);
void do_generate_irqs(uint16_t amount, uint8_t line, uint16_t delay);
u64 irqgen_read_latency(void);
u32 irqgen_read_count(void);

int irqgen_sysfs_setup(struct platform_device *pdev);
void irqgen_sysfs_cleanup(struct platform_device *pdev);



#endif /* !defined(__IRQGEN_HEADER) */
