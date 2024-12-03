# Exercise 08 - Q&A

## 1. What is `uname -a` output on the PYNQ board before starting Ex 8?
- Linux pynq 4.9.0-xilinx-v2017.3 #1 SMP PREEMPT Thu Aug 9 16:33:05 UTC 2018 armv7l GNU/Linux 

## 2. What is the average latency and worst case latency you measure after Ex 7 using the application you developed?
- Average latency: 214ms, worst case latency: 1246ms.

## 3. What is `uname -a` output on the PYNQ board after rebooting with the new kernel image?
- Linux pynq 4.9.0-rt2-xilinx-v2017.3 #1 SMP PREEMPT RT Tue Dec 3 10:50:39 UTC 2024 armv7l GNU/Linux

## 4. What is the average latency and worst case latency you measure in the new kernel image (same procedure as question 2)?
- Average latency: 837ms, worst case latency: 4067ms.

## 5. Compare the results of questions 2 and 4; do they differ significantly? why?
- Yes, the results differ significantly. The new kernel image shows much higher latencies, both in average and worst-case measurements.
This can be attributed to several factors:
- **Real-Time Kernel**: The new real-time (RT) kernel prioritizes timing accuracy and task scheduling, which can introduce higher latencies in some cases.
- **Kernel Configuration**: The RT kernel may have optimizations or configurations that affect latency, such as how system resources like CPU and memory are managed.
- **System Load**: Increased system load or changes in task prioritization could lead to greater delays, particularly in worst-case scenarios.

## 6. Compare the 6 different profiles according to all plots generated.
-	No-RT Linux, no torture: High, inconsistent latencies due to lack of real-time optimizations.
No-RT Linux, with torture: Increased latency and variability under load.
RT Linux, no torture: Lower latencies, with occasional spikes.
RT Linux, with torture: More consistent performance under load compared to no-RT.
RT Linux (tuned), no torture: Minimal, most consistent latencies.
RT Linux (tuned), with torture: Best performance under load, thanks to prioritization and tuning.

## 7. Document the RT performance differences and their reasons
-	RT Kernel: Reduces latency by prioritizing IRQ threads and ensuring CPU time allocation for critical tasks.
Non-RT Kernel: High latency and variability due to lack of priority mechanisms for IRQs.
Tuning: Enhances RT performance by increasing thread priorities and allocating full CPU time to RT tasks.

## 8. What is the goal of this exercise? What did you accomplish?
To assess RT kernel performance under varying loads and configurations. We have measured and compared interrupt latencies across 6 different scenarios and demonstrated the benefits of RT kernels and tuning.

## 9. Feedback (what was difficult? what was easy? how would you improve it?)
-	The RT patching and tuning was complex and required careful configuration.
