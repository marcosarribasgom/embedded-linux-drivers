# Exercise 07 - Q&A

## 1. What is the goal of this exercise? What did you accomplish?
The main goal of this exercise was to extend the irqgen-mod to include a character device interface, enabling interaction with the IRQ generator. We had to implement a application, to process the data form /dev/irqgen
## 2. What is a Character Device? How is it different from a Block Device?
Character Device allows sequential data access and operates on a steam of bytes, meanwhile block device deals with data in fixed-size blocks.
## 3. What design limits of the Ex6 version of `irqgen-mod` do we try to address adding a character device?
EX06 lacked a mechanism for users to interact with the IRQ in real-time. We added a vay to buffer and stream the IRQ events.
EX06 required testing through the kernel interfaces, with the character device we use tools like cat or tail.
## 4. What system calls are we implementing for the filesystem representation of our character device?
open, read, poll and release.
## 5. How does a device node differ from a regular file? What things are similar/identical?
Differences:
Device nodes represent hardware devices, while regular files store data, they also interact with drivers bia system calls, wheras regular file interacts wit the filesystem.
Similarities:
Both can be accessed with the same commands, and both are part of the birtual filesystem.
## 6. Which parts of our LKM code are potentially running in parallel? Which parts could interact in a conflicting way? Make a few concrete examples of conditions in which conflicts in concurrency may arise.
The IRQ handler and character device read operations potentially run in parallel.
The conflicts that may arise are the race condition, if the irq handler modifies the buffer while the user-space process reads from it, data corruption may occur.
## 7. In the proposed structure, we opted for a single lock for the whole `irqgen_data` structure. Could you describe advantages and disadvantages of a single lock vs several locks? What about the effects on the IRQ handling latency?
The advantages of single lock are thar its simple to implement and mantain, and gurantees consistency across the entire data structure.
The disadvantages are that it limits concurrency, as only one thread can access the structure at a time, and can potentially increase irq handling latency.
The effects that it can habe on IRQ handling latency, are that it may delay IRQ handling die to contention, whereas multiple locks could reduce blocking time.
## 8. To avoid concurrency issues among the different parts of `irqgen-mod` you had to choose a synchronization mechanisms. What kind did you choose? Why? Where? What alternatives did you consider? Why did you reject them?
In the current implementation of the irqgen-mod, disabling interrupts during the execution of the interrupt handler is the primary synchronization mechanism. This ensures atomicity while the handler updates shared data structures such as the circular buffer (irqgen_data->latencies) and counters (irqgen_data->total_handled).
We chose this for simplicty, efficiency and context-specific safety.
## 9. To optimize even more the IRQ handling latency we should abandon the monolithic handler function for a more efficient pattern: what's its name? Describe how the code currently handling the requests would be organized and describe a few reasons to choose the alternative over the monolithic style.
The more efficient pattern is called split interrupt handling or bottom-half handling. In this, the IRQ handler is divided into a quick top-half and a deferred bottom-half. The top-half handles urgent tasks like acknowledging the interrupt and exits quickly. Non-critical operations, like updating data structures, are deferred to the bottom-half.
Currently, the IRQ handler performs all operations in one step, which increases latency. By using split handling, we reduce the time during which interrupts are disabled, enabling faster responses to subsequent interrupts. This approach improves overall system responsiveness and reduces contention.
## 10. What is an SDK?
An SDK, or Software Development Kit, is a collection of tools, libraries, and resources designed to help developers build applications for a specific platform. It includes compilers, debuggers, and documentation tailored to the target environment, simplifying the development and deployment process.
## 11. In the context of the Yocto Project, what are the differences between the Standard and the Extensible SDK?
The Standard SDK is pre-configured for cross-compilation and provides the tools needed for basic application development. It is fixed and cannot be easily extended. The Extensible SDK allows for flexibility, enabling developers to modify recipes and add new packages. It is more suited for dynamic and evolving projects.
## 12. Describe your workflow in developing and testing the `irqgen_statistics` app
The workflow involved writing the irqgen_statistics app to continuously process input from /dev/irqgen and compute statistics. Initial testing was done on saved CSV files to debug locally and refine the program logic. Once functional, the app was cross-compiled using the Yocto SDK and tested on the PYNQ board, verifying its ability to process real-time IRQ data without errors.
## 13. Feedback (what was difficult? what was easy? how would you improve it?)
It was quite difficult, i think the main improvement is the same as the rest of the exercises, giving a more detailed instructions, not just a bunch of information.

