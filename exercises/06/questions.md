# Exercise 06 - Q&A

## 1. What is the goal of this exercise? What did you accomplish?
- The goal is to understand platform device drivers, device trees, and kernel interactions. We created a platform driver, interfacing with hardware via the device tree.

## 2. What is a platform device? What makes such a device different from, e.g., a USB device or a PCI device?
- A platform device is directly attached to the processor without a discovery protocol, described statically in the device tree. USB and PCI devices support dynamic discovery, allowing plug-and-play functionality.

## 3. What is the relation between the device-tree and platform device drivers?
- The device tree provides hardware descriptions that platform drivers use to configure and initialize devices, specifying addresses, interrupts, and other settings.

## 4. Why did we bother to rewrite the LKM code to implement a platform device driver?
- Platform drivers better integrate with static hardware descriptions in the device tree, providing better system compatibility and resource management for non-discoverable devices.

## 5. Imagine you are developing a product on the PYNQ-Z1 board involving several IP blocks of your own design to squeeze all the resources and cabalities of the SoC FPGA; most IP blocks are accessible from the PS through the AMBA/AXI bus. Do you need to alter the device-tree we are using? What's the minimum set of information that you would require for each addressable IP block?
- Yes, custom IP blocks need entries in the device tree. Each block requires a compatible string, address range, interrupts, and clock info if relevant.

## 6. What capabilities are exposed through the current sysfs interface of the `irqgen`? Describe the available entry points inside `/sys/kernel/irqgen` and their functions.
- The irqgen sysfs interface allows control over enabling/disabling IRQs, setting configurations, and monitoring status, enabling userspace interaction with the IRQ generator.

## 7. Are there code sections that are missing concurrency barriers? Where? Can you think of a way of triggering unintended behaviour?
- Concurrency barriers may be missing where shared data structures are accessed by both IRQ handlers and control functions, risking race conditions. Toggling enable/disable quickly could cause erratic behavior.

## 8. Feedback (what was difficult? what was easy? how would you improve it?)
- Rewriting the LKM as a platform driver was challenging, especially with device tree syntax, while sysfs integration was easier. More documentation on kernel concurrency would be helpful.