/**
 * @file   irqgen_cdev.c
 * @author Nicola Tuveri
 * @date   15 November 2018
 * @version 0.7
 * @target_device Xilinx PYNQ-Z1
 * @brief   A stub module to support the IRQ Generator IP block for the
 *          Real-Time System course (character device support).
 */

# include <linux/kernel.h>           // Contains types, macros, functions for the kernel

# include <linux/device.h>
# include <linux/string.h>

# include <linux/cdev.h>             // Header for character devices support
# include <linux/fs.h>               // Header for Linux file system support
# include <linux/uaccess.h>          // Header for userspace access support

# include "irqgen.h"                 // Shared module specific declarations

#define IRQGEN_CDEV_CLASS "irqgen-class"

struct irqgen_chardev {
    struct cdev cdev;
    dev_t devt;
    struct device *dev;
    struct class *class;

    // TODO: do we need a sync mechanism for any cdev operation?
};

static struct irqgen_chardev irqgen_chardev;

// The prototype functions for the character driver -- must come before the struct definition
static int     irqgen_cdev_open(struct inode *, struct file *);
static int     irqgen_cdev_release(struct inode *, struct file *);
static ssize_t irqgen_cdev_read(struct file *, char *, size_t, loff_t *);

static struct file_operations fops = {
    .open = irqgen_cdev_open,
    .release = irqgen_cdev_release,
    .read = irqgen_cdev_read,
};

// Initialize the char device driver
int irqgen_cdev_setup(struct platform_device *pdev)
{
    int ret;

    // Dynamically allocate a major and minor number
    ret = alloc_chrdev_region(&irqgen_chardev.devt, 0, 1, DRIVER_NAME);
    if (ret < 0) {
        printk(KERN_ERR KMSG_PFX "Failed to allocate chrdev region.\n");
        return ret;
    }

    // Initialize the cdev structure
    cdev_init(&irqgen_chardev.cdev, &fops);
    irqgen_chardev.cdev.owner = THIS_MODULE;

    // Add the cdev to the system
    ret = cdev_add(&irqgen_chardev.cdev, irqgen_chardev.devt, 1);
    if (ret < 0) {
        printk(KERN_ERR KMSG_PFX "Failed to add cdev.\n");
        unregister_chrdev_region(irqgen_chardev.devt, 1);
        return ret;
    }

    // Create a class for the device
    irqgen_chardev.class = class_create(THIS_MODULE, IRQGEN_CDEV_CLASS);
    if (IS_ERR(irqgen_chardev.class)) {
        printk(KERN_ERR KMSG_PFX "Failed to create device class.\n");
        ret = PTR_ERR(irqgen_chardev.class);
        cdev_del(&irqgen_chardev.cdev);
        unregister_chrdev_region(irqgen_chardev.devt, 1);
        return ret;
    }

    // Create the device node in /dev
    irqgen_chardev.dev = device_create(irqgen_chardev.class, NULL, irqgen_chardev.devt, NULL, DRIVER_NAME);
    if (IS_ERR(irqgen_chardev.dev)) {
        printk(KERN_ERR KMSG_PFX "Failed to create device node.\n");
        ret = PTR_ERR(irqgen_chardev.dev);
        class_destroy(irqgen_chardev.class);
        cdev_del(&irqgen_chardev.cdev);
        unregister_chrdev_region(irqgen_chardev.devt, 1);
        return ret;
    }

    printk(KERN_INFO KMSG_PFX "Character device setup completed.\n");
    return 0;
}


void irqgen_cdev_cleanup(struct platform_device *pdev)
{
    // Destroy the device node
    if (irqgen_chardev.dev) {
        device_destroy(irqgen_chardev.class, irqgen_chardev.devt);
    }

    // Destroy the device class
    if (irqgen_chardev.class) {
        class_destroy(irqgen_chardev.class);
    }

    // Delete the cdev structure
    cdev_del(&irqgen_chardev.cdev);

    // Unregister the major and minor numbers
    unregister_chrdev_region(irqgen_chardev.devt, 1);

    printk(KERN_INFO KMSG_PFX "Character device cleanup completed.\n");
}


static u8 already_opened = 0;

static int irqgen_cdev_open(struct inode *inode, struct file *f)
{
# ifdef DEBUG
    printk(KERN_DEBUG KMSG_PFX "irqgen_cdev_open() called.\n");
# endif

    if (already_opened) {
        return -EBUSY;
    }
    already_opened = 1;
    return 0;
}

static int irqgen_cdev_release(struct inode *inode, struct file *f)
{
# ifdef DEBUG
    printk(KERN_DEBUG KMSG_PFX "irqgen_cdev_release() called.\n");
# endif

    if (!already_opened) {
        return -ECANCELED;
    }
    already_opened = 0;
    return 0;
}

// This will write in the userspace buffer one line at a time, the
// client (or the std library) will retry automatically.
//
// NOTE: We require the userland buffer to be at least 60 bytes (count>=60)
static ssize_t irqgen_cdev_read(struct file *fp, char *ubuf, size_t count, loff_t *f_pos)
{
#define KBUF_SIZE 100
    static char kbuf[KBUF_SIZE];
    ssize_t ret = 0;

    if (count < 60) {
        return -ENOBUFS;  // Ensure buffer is large enough
    }

    // Check if the circular buffer is empty
    if (irqgen_data->rp == irqgen_data->wp) {
        return 0;  // No data to read
    }

    // Read latency data from the buffer
    struct latency_data v = irqgen_data->latencies[irqgen_data->rp];

    // Increment the read pointer (circular buffer logic)
    irqgen_data->rp = (irqgen_data->rp + 1) % MAX_LATENCIES;

    // Format the data into a CSV line
    ret = scnprintf(kbuf, KBUF_SIZE, "%u,%lu,%llu\n", v.line, v.latency, v.timestamp);
    if (ret < 0) {
        return -ENOMEM;  // Error in formatting data
    }

    // Transfer the data from kernel space to user space
    if (copy_to_user(ubuf, kbuf, ret)) {
        return -EFAULT;  // Error in transferring to user space
    }

    // Update file position (POSIX requirement)
    *f_pos += ret;

    return ret;  // Return the number of bytes read
#undef KBUF_SIZE
}

