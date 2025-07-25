#include <linux/kernel.h>           // Low-level kernel macros
#include <linux/module.h>           // Needed for dynamic module loading
#include <linux/interrupt.h>        // Tasklets
#include <linux/slab.h>             // kmalloc
#include <linux/device.h>           // sysfs functions

#define SYSFS_FILE_ATTR_NAME "evil"

#define STORAGE_SIZE PAGE_SIZE // DON'T CHANGE IN FINAL REVISION
#define INPUT_BUFSIZE 1000     // DON'T CHANGE IN FINAL REVISION

// Dynamic and static allocation for the sake of example
char *data_storage = NULL;
char input_buf[INPUT_BUFSIZE];

struct tasklet_struct* tasklet = NULL;
int32_t bytes_stored = 0;

// A standalone kobject for a sysfs entry
static struct kobject* evil_kobj = NULL;

static void custom_strreplace(char *str, char old, char new)
{
    while (*str) {
        if (*str == old) {
            *str = new;
        }
        str++;
    }
}

static void do_tasklet(unsigned long data)
{
    int32_t retval;

    if (bytes_stored + strlen((char *)data) >= STORAGE_SIZE - 1) {
        printk(KERN_INFO "EVIL: storage full\n");
        return;
    }

    // Replace 'a's with ' ' in the name of evilness
    custom_strreplace((char *)data, 'a', ' ');

    retval = sprintf(&data_storage[bytes_stored], "%s", (char *)data);
    if (retval < 0) {
        printk(KERN_ERR "EVIL: sprintf failed\n");
    } else {
        // Null-character excluded from the sprintf return value so 1 should be added
        bytes_stored += retval + 1;
        printk(KERN_INFO "EVIL: bytes stored: %d\n", bytes_stored);
    }
}

// The sysfs attribute invoked when writing
static ssize_t store_evil(struct kobject *kobj, struct kobj_attribute *attr, const char *buf, size_t count) {
    if (count > INPUT_BUFSIZE - 1) {
        printk(KERN_ERR "EVIL: Input buffer size exceeded\n");
        return -EINVAL; // Return an error if the input size is too large
    }

    // Read the user parameters
    snprintf(input_buf, INPUT_BUFSIZE, "%s", buf);

    // Run a tasklet to perform string manipulation and storing the data
    tasklet_schedule(tasklet);

    return count;
}

// The sysfs attribute invoked when reading from the file
static ssize_t show_evil(struct kobject *kobj, struct kobj_attribute *attr, char *buf) {
    uint32_t bytes = 0;
    int32_t retval = 0;

    // Go through the data storage and write all found strings to the output buffer
    while (bytes < bytes_stored) {
        retval = sprintf(&buf[bytes], "%s", &data_storage[bytes]);
        if (retval <= 0) {
            break;
        }
        // Null-character excluded from the sprintf return value so 1 should be added
        bytes += retval + 1;
    }

    printk("MUAHAHAHA\n");
    return bytes;
}

// Kobject attribute declaration
static struct kobj_attribute evil_attribute = __ATTR(evil, 0664, show_evil, store_evil);

// The kernel module init function
static int32_t __init evil_init(void)
{
    int32_t retval;

    printk(KERN_INFO "EVIL: THIS IS THE EVIL MODULE\n");

    data_storage = (char*)kmalloc(STORAGE_SIZE, GFP_KERNEL);
    if (data_storage == NULL) {
        printk(KERN_ERR "EVIL: data storage memory allocation failed\n");
        retval = -ENOMEM;
        goto error_alloc_data_storage;
    }

    // Create a sysfs directory entry under /sys/kernel/
    evil_kobj = kobject_create_and_add("evil_module", kernel_kobj);
    if (evil_kobj == NULL) {
        printk(KERN_ERR "EVIL: kobject_create_and_add failed\n");
        retval = -EINVAL;
        goto error_kobject_create;
    }

    // Add attributes to the kobject
    retval = sysfs_create_file(evil_kobj, &evil_attribute.attr);
    if (retval) {
        printk(KERN_ERR "EVIL: sysfs_create_file failed\n");
        goto error_sysfs_create;
    }

    // Allocate memory for the tasklet before initialization
    tasklet = kmalloc(sizeof(struct tasklet_struct), GFP_KERNEL);
    if (!tasklet) {
        printk(KERN_ERR "EVIL: tasklet allocation failed\n");
        retval = -ENOMEM;
        goto error_tasklet_alloc;
    }

    // Initialize the tasklet
    tasklet_init(tasklet, do_tasklet, (unsigned long)input_buf);

    return 0;

error_tasklet_alloc:
    sysfs_remove_file(evil_kobj, &evil_attribute.attr);
error_sysfs_create:
    kobject_put(evil_kobj);
error_kobject_create:
    kfree(data_storage);
error_alloc_data_storage:
    printk(KERN_ERR "EVIL: error occurred while evil init!\n");
    return retval;
}

// The kernel module exit function
static void __exit evil_exit(void)
{
    // Kill the tasklet before freeing the memory
    if (tasklet) {
        tasklet_kill(tasklet);
        kfree(tasklet);
    }

    // Remove sysfs attribute, then delete the kobject
    if (evil_kobj) {
        sysfs_remove_file(evil_kobj, &evil_attribute.attr);
        kobject_put(evil_kobj);
    }

    // Free the allocated data storage
    if (data_storage) {
        kfree(data_storage);
    }

    printk(KERN_INFO "EVIL: MUAHAHAHA\n");
}

module_init(evil_init);
module_exit(evil_exit);

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("The evil kernel module for the Real-time systems course");
MODULE_AUTHOR("Jan Lipponen <jan.lipponen@wapice.com>");
MODULE_AUTHOR("Ashfak <mdashfakhaider.nehal@tuni.fi>");
MODULE_AUTHOR("Marcos <marcos.arribas-gomez@tuni.fi>");
MODULE_AUTHOR("Asri <mohamed.asri@tuni.fi>");
MODULE_VERSION("1.0");
