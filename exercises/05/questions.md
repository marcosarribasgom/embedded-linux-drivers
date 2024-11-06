# Exercise 05 - Q&A

## 1. What is the goal of this exercise? What did you accomplish?
The goal of this exercise was to develop and test a Linuz kernel module for a IRQ generator IP block. Specifically the task was to
add features to the module to allow interaction with hardware, generating interrupts and tracking latency.
## 2. Describe your verilog coding process in 2 paragraphs
We started understading the requirements of the IRQ generator block, particularly focusing on adding a latency counter register
to track the interrupt latency. We sketched out the basic design that included the counter that would capture the time between the
interrupt initiation and ack.
We tested in a simulation but we did not manage to male it work, we tried validating that the latency was accurately messured and 
reset with each interruption. This bitstream was transfered to the Linux enviroment, but did not work.
## 3. How much difference there is in latency between the regular driver build and the debug driver build? Why?
The debug driver build incurs higher latency compered to the driver build. This increase in latency is due to additional debug
information logging which intoduces delay. Each log entry takes time, especially when usng printk.
## 4. How can you find the base address for the IP block register space in Vivado? Does it match the contents of the devicetree?
In Vivado, the base address for the IP Block register space can be found by checking the Address Editor after configuring IP in the
block design. This Address Editor assigns addresses to each IP Block, which are specified in the address map.
## 5. Feedback (what was difficult? what was easy? how would you improve it?)
Again, the lack of clear instructions makes the development quite difficult, the information provided are to extense and do not 
address one unique topic which makes the search of information really tedious. 
The most challenging par was configureing and testinf the sysfs interface.
