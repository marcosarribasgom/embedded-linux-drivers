# Exercise 03 - Q&A

## 1. What is the goal of this exercise? What did you accomplish?
- The goal of this exercise was to sharp our skills in developing and debugging Linux Kernel code.

## 2. Where is the `evil-tests` script installed inside the image? Where is the accompanying data installed? Describe how this is set up in Yocto.
- The script is on: mnt/sdcard/evil-tests/files/evil-tests.sh
- The accompanying data is installed on: mnt/sdcard/evil-tests/files/data.txt 
- The evil-tests.bb file inside the mnt/sdcard/evil-tests/evil-tests.bb and this bb file has all the required dependencies while building the image on Yocto.

## 3. How are the LKM and `evil-tests` added to `core-image-minimal`? Briefly describe what sets apart the `evil-tests` recipe compared with most recipes included in `meta-groupXX`, `meta-pynq`, `meta-xilinx` and `poky`.
- The evil-tests.bb and evil-mod.bb are included in the meta-compce460 and they are added in the image by modifying the core-image-minimal file.
- The thing that sets apart evil-tests from others is, it is specifically designed for testing rather than adding new system features. 

## 4. How many buffers does the `evil` LKM use? List their names, their size and their purpose. How is their memory allocated?
- Two. 
1. data_storage (Size: 4096 bytes, Stores the user input strings, The memory is allocated by using kmalloc() function)
2. input_buf (Size: 1000 bytes, Temporarily stores user input and appends them to data_storage, It is allocated statistacilly as a char array)

## 5. How are user-input strings stored inside the module? How does the module iterate over this list? What's the loop end condition?
- They are stored inside data_storage. It iterated over the stored data by the condition (bytes < bytes_stored). The loop end condition: bytes == bytes_stored 

## 6. What is the path for the `evil` LKM's sysfs entry? How is it determined? How is it mapped to the module functionality?
- sys/kernel/evil_module/evil. The path is determined by creating the .ko file and then creating a attribute file for the .ko object. It is mapped using the function: kobj_attribute evil_attribute = __ATTR(evil, 0664, show_evil, store_evil)

## 7. What bugs did you find/fix? Categorize them and briefly describe each matching *category* (what's the *impact* of each *category*? How common do you *think* it is?)
- Some bugs we found were improper handling of shared resources, issues with replacing characters and adding checks to prevent writing beyond the limits of the buffers. 
- These buffer overflows are common issue. 

## 8. What are out-of-bounds accesses and stack overflows? Are they relevant for this exercise? What could be the consequences of such defects in a LKM?
- The out-of-bounds occurs when the code tries to read/write beyond the allocated memory buffer limit. 
- Stack overflow is when the program exceeds the stack's allocated size. 
- These are relevent to the exercise as improper handling of buffer sizes can lead to out-of-bound access. 
- The consequences can be crash of the entire kernel, compromising system security and data corruption. 

## 9. Feedback (what was difficult? what was easy? how would you improve it?)
- It was a bit difficult to work with and fix the code. 
