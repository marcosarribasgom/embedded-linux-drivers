/**
 * @file   irqgen_sysfs.c
 * @brief  Support for sysfs access to IRQ Generator properties.
 */

#define BONUS_SYSFS_IS_IMPLEMENTED

#include <linux/kernel.h>
#include <asm/io.h>
#include <linux/sysfs.h>
#include <linux/device.h>
#include <linux/string.h>
#include "irqgen.h"
#include "irqgen_addresses.h"

#define IRQGEN_ATTR_GET_NAME(_name) \
    irqgen_attr_##_name
#define IRQGEN_ATTR_RO(_name) \
    static struct kobj_attribute IRQGEN_ATTR_GET_NAME(_name) = __ATTR_RO(_name)
#define IRQGEN_ATTR_RW(_name) \
    static struct kobj_attribute IRQGEN_ATTR_GET_NAME(_name) = __ATTR_RW(_name)
#define IRQGEN_ATTR_WO(_name) \
    static struct kobj_attribute IRQGEN_ATTR_GET_NAME(_name) = __ATTR_WO(_name)

/* Function to show the count of handled interrupts */
static ssize_t count_handled_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
{
    return sprintf(buf, "%u\n", irqgen_data->count_handled);
}
IRQGEN_ATTR_RO(count_handled);

/* Function to show if the IRQ generator is enabled */
static ssize_t enabled_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
{
    bool enabled = !!(ioread32(IRQGEN_CTRL_REG) & IRQGEN_CTRL_REG_F_ENABLE);
    return sprintf(buf, "%d\n", enabled);
}

/* Function to set the enable status of the IRQ generator */
static ssize_t enabled_store(struct kobject *kobj, struct kobj_attribute *attr, const char *buf, size_t count)
{
    bool var;
    if (strtobool(buf, &var) < 0)
        return -EINVAL;

    if (var)
        enable_irq_generator();
    else
        disable_irq_generator();

    return count;
}
IRQGEN_ATTR_RW(enabled);

static u32 delay_store_buf = 0;

/* Function to store delay value for IRQ generation */
static ssize_t delay_store(struct kobject *kobj, struct kobj_attribute *attr, const char *buf, size_t count)
{
    unsigned long val;
    int ret = kstrtoul(buf, 10, &val);
    if (ret < 0 || val > IRQGEN_MAX_DELAY)
        return -EINVAL;

    delay_store_buf = val;
    return count;
}

/* Function to set amount of IRQs to generate */
static ssize_t amount_store(struct kobject *kobj, struct kobj_attribute *attr, const char *buf, size_t count)
{
    unsigned long val;
    int ret = kstrtoul(buf, 10, &val);
    if (ret < 0 || val > IRQGEN_MAX_AMOUNT)
        return -EINVAL;

    do_generate_irqs(val, 0, delay_store_buf);
    return count;
}
IRQGEN_ATTR_WO(delay);
IRQGEN_ATTR_WO(amount);

/* Latency show function for sysfs */
static ssize_t latency_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
{
    u64 latency = irqgen_read_latency();
    return sprintf(buf, "%llu\n", latency);
}
IRQGEN_ATTR_RO(latency);

/* Attribute group array */
static struct attribute *attrs[] = {
    &IRQGEN_ATTR_GET_NAME(count_handled).attr,
    &IRQGEN_ATTR_GET_NAME(enabled).attr,
    &IRQGEN_ATTR_GET_NAME(delay).attr,
    &IRQGEN_ATTR_GET_NAME(amount).attr,
    &IRQGEN_ATTR_GET_NAME(latency).attr,  // Adding latency attribute
    NULL,
};

/* Attribute group struct */
static struct attribute_group attr_group = {
    .attrs = attrs,
};

static struct kobject *irqgen_kobj = NULL;

/* Setup function for sysfs */
int irqgen_sysfs_setup(void)
{
    int retval = 0;

    irqgen_kobj = kobject_create_and_add(DRIVER_NAME, kernel_kobj);
    if (IS_ERR(irqgen_kobj)) {
        printk(KERN_ERR KMSG_PFX "kobject_create_and_add() failed.\n");
        return PTR_ERR(irqgen_kobj);
    }

    retval = sysfs_create_group(irqgen_kobj, &attr_group);
    if (retval) {
        printk(KERN_ERR KMSG_PFX "sysfs_create_group() failed.\n");
        kobject_put(irqgen_kobj);
    }

    return retval;
}

/* Cleanup function for sysfs */
void irqgen_sysfs_cleanup(void)
{
    if (irqgen_kobj) {
        kobject_put(irqgen_kobj);
    }
}

