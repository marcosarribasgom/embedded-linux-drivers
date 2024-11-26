/**
 * @file   irqgen_cdev.c
 * @brief  Character device support for the IRQ Generator module
 */

#include <linux/kernel.h>           // Contains types, macros, functions for the kernel
#include <linux/device.h>
#include <linux/string.h>
#include <linux/cdev.h>             // Header for character devices support
#include <linux/fs.h>               // Header for Linux file system support
#include <linux/uaccess.h>          // Header for userspace access support
#include "irqgen.h"                 // Shared module specific declarations

#define IRQGEN_CDEV_CLASS "irqgen-class"

struct irqgen_chardev {
    struct cdev cdev;
    dev_t devt;
    struct device *dev;
    struct class *class;
};

static struct irqgen_chardev irqgen_chardev;

// Function prototypes for the character driver
static int     irqgen_cdev_open(struct inode *, struct file *);
static int     irqgen_cdev_release(struct inode *, struct file *);
static ssize_t irqgen_cdev_read(struct file *, char *, size_t, loff_t *);

static struct file_operations fops = {
    .open = irqgen_cdev_open,
    .release = irqgen_cdev_release,
    .read = irqgen_cdev_read,
};

// Synchronization variable for shared resources
static u8 already_opened = 0;

// Initialize the char device driver
int irqgen_cdev_setup(struct platform_device *pdev)
{
    int ret;

    // Initialize the character device
    cdev_init(&irqgen_chardev.cdev, &fops);
    irqgen_chardev.cdev.owner = THIS_MODULE;
    irqgen_chardev.cdev.kobj.parent = &pdev->dev.kobj;

    // Dynamically allocate a major and minor number
    ret = alloc_chrdev_region(&irqgen_chardev.devt, 0, 1, DRIVER_NAME);
    if (ret < 0) {
        printk(KERN_ERR KMSG_PFX "Failed to allocate chrdev region.\n");
        return ret;
    }

    // Add the character device to the system
    ret = cdev_add(&irqgen_chardev.cdev, irqgen_chardev.devt, 1);
    if (ret < 0) {
        printk(KERN_ERR KMSG_PFX "Failed to add cdev.\n");
        goto err_unregister_chrdev_region;
    }

    // Create device class
    irqgen_chardev.class = class_create(THIS_MODULE, IRQGEN_CDEV_CLASS);
    if (IS_ERR(irqgen_chardev.class)) {
        ret = PTR_ERR(irqgen_chardev.class);
        printk(KERN_ERR KMSG_PFX "Failed to create device class.\n");
        goto err_cdev_del;
    }

    // Create device node in /dev
    irqgen_chardev.dev = device_create(irqgen_chardev.class, &pdev->dev,
                                       irqgen_chardev.devt, NULL, DRIVER_NAME);
    if (IS_ERR(irqgen_chardev.dev)) {
        ret = PTR_ERR(irqgen_chardev.dev);
        printk(KERN_ERR KMSG_PFX "Failed to create device.\n");
        goto err_class_destroy;
    }

    return 0;

err_class_destroy:
    class_destroy(irqgen_chardev.class);
err_cdev_del:
    cdev_del(&irqgen_chardev.cdev);
err_unregister_chrdev_region:
    unregister_chrdev_region(irqgen_chardev.devt, 1);
    return ret;
}

void irqgen_cdev_cleanup(struct platform_device *pdev)
{
    device_destroy(irqgen_chardev.class, irqgen_chardev.devt);
    class_destroy(irqgen_chardev.class);
    cdev_del(&irqgen_chardev.cdev);
    unregister_chrdev_region(irqgen_chardev.devt, 1);
}

static int irqgen_cdev_open(struct inode *inode, struct file *f)
{
    unsigned long flags;

#ifdef DEBUG
    printk(KERN_DEBUG KMSG_PFX "irqgen_cdev_open() called.\n");
#endif

    spin_lock_irqsave(&irqgen_data->lock, flags);
    if (already_opened) {
        spin_unlock_irqrestore(&irqgen_data->lock, flags);
        return -EBUSY;
    }
    already_opened = 1;
    spin_unlock_irqrestore(&irqgen_data->lock, flags);

    return 0;
}

static int irqgen_cdev_release(struct inode *inode, struct file *f)
{
    unsigned long flags;

#ifdef DEBUG
    printk(KERN_DEBUG KMSG_PFX "irqgen_cdev_release() called.\n");
#endif

    spin_lock_irqsave(&irqgen_data->lock, flags);
    if (!already_opened) {
        spin_unlock_irqrestore(&irqgen_data->lock, flags);
        return -ECANCELED;
    }
    already_opened = 0;
    spin_unlock_irqrestore(&irqgen_data->lock, flags);

    return 0;
}

static ssize_t irqgen_cdev_read(struct file *fp, char *ubuf, size_t count, loff_t *f_pos)
{
    unsigned long flags;
    static char kbuf[100];
    ssize_t ret = 0;
    struct latency_data v;

    if (count < 60) {
        return -ENOBUFS; // Buffer too small
    }

    // Enter critical section
    spin_lock_irqsave(&irqgen_data->lock, flags);

    if (irqgen_data->rp == irqgen_data->wp) {
        // Circular buffer is empty
        spin_unlock_irqrestore(&irqgen_data->lock, flags);
        return 0;
    }

    v = irqgen_data->latencies[irqgen_data->rp];
    irqgen_data->rp = (irqgen_data->rp + 1) % MAX_LATENCIES;

    // Exit critical section
    spin_unlock_irqrestore(&irqgen_data->lock, flags);

    ret = scnprintf(kbuf, sizeof(kbuf), "%u,%lu,%llu\n", v.line, v.latency, v.timestamp);
    if (ret < 0) {
        return ret;
    }

    // Copy data to user space
    if (copy_to_user(ubuf, kbuf, ret)) {
        return -EFAULT;
    }

    *f_pos += ret;
    return ret;
}

