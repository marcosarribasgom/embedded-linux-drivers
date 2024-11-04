#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/moduleparam.h>

// Metadata
MODULE_LICENSE("GPL");
MODULE_AUTHOR("Marcos");
MODULE_AUTHOR("Ash");
MODULE_AUTHOR("Asri");
MODULE_DESCRIPTION("A Hello World Kernel Module with Customizable Greeting");
MODULE_VERSION("1.0");

// Module parameter: customizable greeting
static char *greet_name = "World";
module_param(greet_name, charp, 0444); // 0444 -> read-only for everyone
MODULE_PARM_DESC(greet_name, "Name to greet");

// Function to be called when the module is loaded
static int __init hello_init(void) {
    printk(KERN_INFO "Hello, %s! Module is being loaded.\n", greet_name);
    return 0;
}

// Function to be called when the module is removed
static void __exit hello_exit(void) {
    printk(KERN_INFO "Goodbye, %s! Module is being unloaded.\n", greet_name);
}

// Register the entry and exit functions
module_init(hello_init);
module_exit(hello_exit);

