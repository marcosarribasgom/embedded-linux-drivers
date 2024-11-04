# Exercise 04 - Q&A

## 1. What is the goal of this exercise? What did you accomplish
- The goal of this exercise was to develop a Linux kernel module (LKM) to support an IRQ Generator IP block implemented in an FPGA. This involves completing a stub driver by resolving FIXME and TODO comments, enabling the driver to handle interrupt requests (IRQs). We successfully implemented the required functionality in the module, filled in the missing code, handled IRQs, and tested the module on the PYNQ board.

## 2. Summarize the functionality provided by the IRQ Generator IP block, then describe what is the purpose of the various registers exposed by the FPGA device. Finally, ignore the fact that you were instructed to look for the base address of the IRQ Generator register space in the provided `devicetree.dts` and instead imagine you were also the developer of the FPGA core design, where would you have found the base address of the register space?
- The IRQ Generator IP block generates interrupt requests on demand, supporting multiple interrupt lines. Each line can be individually controlled to trigger an IRQ to the processor. Registers in the FPGA device serve various functions: they enable or disable interrupts, clear pending interrupts, configure interrupt behavior, and track IRQ status. If we were designing FPGA core, we would define the base address of the register space in the memory map of the IP block itself, which would be included in the system specification or the memory mapping file used to interface the FPGA with the processing system.

## 3. Describe the relationship between interrupt lines in the IRQ Generator, HW IRQ and Linux IRQ numbers, and how did you proceed to discover the IRQ number to use in the driver.
- Interrupt lines in the IRQ Generator correspond to hardware IRQ (HWIRQ) numbers that the device raises to signal events. The Linux IRQ number is an abstraction mapped to the HWIRQ by the kernel, which allows the OS to handle interrupts in a device-independent manner. To discover the IRQ number, we went to the device tree, where the IRQ Generator's hardware interrupt lines were mapped to their corresponding Linux IRQs using the standard interrupt-controller property.

## 4. How many interrupt lines are available in the documented FPGA core (refer to the spec, even if we only used one in the *beta* bitstream we were given)?
- The documented FPGA core supports 16 interrupt lines, as described in the spec. However, the provided beta bitstream only enables one IRQ line for testing purposes.

## 5. What value is reported in the devicetree for the first IRQ line? How is it determined? (check the spec document, it has all the required information to map the line number to the HW IRQ on the processing system)
- The first IRQ line's value in the devicetree is mapped to the corresponding hardware IRQ (HWIRQ) using the device's specification. The value is determined based on the interrupt controller's configuration in the FPGA and how the IRQs are wired to the processing system. The spec provides the information to map each IRQ line to its associated HWIRQ number.

## 6. Using the information detailed in the previous answer, what should be written in the `devicetree.dts` line describing the IRQ Generator interrupts if it were to describe all the 16 HW IRQs? (write the exact line as it would appear in the `devicetree.dts`, notice that the HW IRQs are not contiguous!). Each interrupt line is specified by three cells in the device tree file; what information does each of these three cells represent?
- The devicetree.dts line describing all 16 HW IRQs would be written as follows:
interrupts = <0 32 4>, <0 34 4>, <0 36 4>, <0 38 4>, <0 40 4>, <0 42 4>, <0 44 4>, <0 46 4>,
             <0 48 4>, <0 50 4>, <0 52 4>, <0 54 4>, <0 56 4>, <0 58 4>, <0 60 4>, <0 62 4>;
Each interrupt line in the device tree is described by three cells: the first cell specifies the interrupt controller, the second cell contains the HW IRQ number, and the third cell provides trigger type (4 for edge-triggered interrupts).

## 7. Why do we need to use `ioremap`, `ioread32` and `iowrite32`? Why do we want to use the Linux kernel bitfields macroes rather than using bitwise arithmetic directly?
- We use ioremap to map the physical memory addresses of the FPGA registers into the kernel’s virtual address space, allowing the driver to access them. ioread32 and iowrite32 are used for reading from and writing to the memory-mapped registers. Using Linux kernel bitfield macros improves readability, maintainability, and portability by abstracting bitwise operations, making the code less error-prone and easier to adapt for different architectures or register layouts.

## 8. (BONUS, optional) Did you find any bug in the bitstream implementation while testing the sysfs interface?
- Yes, while testing the sysfs interface, a bug was identified in the bitstream where attempting to access unsupported features (such as the latency register) caused undefined behavior or crashes. This issue likely stems from the preliminary state of the provided bitstream.

## 9. Feedback (what was difficult? what was easy? how would you improve it?)
- The most challenging aspect was understanding the interrupt handling mechanism and correctly mapping the IRQs between hardware and Linux.
