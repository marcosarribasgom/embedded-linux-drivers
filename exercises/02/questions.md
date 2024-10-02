# Exercise 02 - Q&A

## 1. What is the goal of this exercise? What did you accomplish?
- The goal was to develop a LKM to support peripherals on the PYNQ board. We successfully created a yocto layer and implemented a hello world module and integrated it with the image and tested it with PuTTY. 

## 2. What is a Yocto layer? What are the essential requirements to correctly define a new one?
- The yocto layer is collection of metadata for building software components. Essential is the layer.conf, proper directory structure.

## 3. What priority did you assign to your layer? How and why?
- We assigned priority 6 because it overrides lower-priority layers like the ones we created during exercise 1 which were priority 5.

## 4. What does LKM stand for (in the context of this exercise)? What does it mean and what are the characteristics of a LKM? What's the alternative?
- LKM stands for Loadable Kernel Module, which can be loaded and unloaded dynamically without rebooting. Characteristics include expansion of kernel funcionality and lowest resources. 

## 5. What does Out-of-Tree Module mean? What's the alternative and what are the differences?
- A out-of-tree module is separate from the kernel source tree where in the other hand a in tree module is part of kernel source. Out of tree require more integration effort and might face compatibility issue but the in tree module benefit from maintainance alongside the kernel.

## 6. How did you define the module metadata? How does it work?
- We defined the module metadata by using macros like Module_license() and Module_author() which provide the authorship. This information is used by kernel for compliance and management. 

## 7. How is the module built? How does it get installed inside `core-image-minimal`?
- The module is build by the Makefile that we made which compiles against the kernel's source. The Yocto recipe specifies the build process, resulting in a .ko file that gets included in the core-image-minimal image file. 

## 8. What is the path for the `sysfs` entry for the module? List and explain its contents.
- The sysfs is located in the /sys/module/hello_module/ and it contains coresize, initsize, notes, refcnt, srcversion, uevent, holders, initstate, parameters, sections, taint, version. The coresize has the size of the core module, the initsize has the initialized data segment of the module, the notes provides information on the module's metadata, the refcnt has the reference count of the module, the srcversion has a string that represents the version of the source code used to build the module, the uevent notifies when the module is loaded or unloaded, holders list other modules that hold a refernce of that module, initstate display the current initialized state of the module, parameters contain load-time parameters that can be set when loading the module, the sections provide information about various sections of the module, the taint indicates if the kernel is in a tainted state due to the loading and the version indicated the specific build version of the module. 

## 9. Feedback (what was difficult? what was easy? how would you improve it?)
- It was easy but the guidelines were not that clear which caused us to circle round and round until we figured out how to do it successfully. Adding less material and mentioning the connection of them with different parts of the exercise would be great improvement. 
