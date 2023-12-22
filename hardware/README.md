# Compute

## Central Processing Unit
A Central Processing Unit (CPU) is the main device in a computer used for software execution. 

**Clock Speed**  
Clock speed is the number of instructions a processor can execute in one second. For example, a CPU with a clock speed of 3 gigahertz the CPU can execute 3 billion instructions per second (the prefix *giga* denotes a factor of one billon). 

**Simultaneous Multi-Threading**  
Simultaneous Multi-Threading (SMT) is technology that allows a CPU to execute multiple threads on a single processor core. Without it, you'd need a processor with more cores to execute more threads. Intel's implementation of SMT is called "Hyper-Threading."

**Virtual CPUs**  
A virtual CPU (vCPU) is a virtualized CPU. The number of vCPUs a virtual machine can support is calculated using this formula: (processor cores) X (threads per core) = vCPUs. For example, 4 cores multiplied by 2 threads equals 8 vCPUs. 

**System Load**  
System load is how many processes are waiting to be executed by the CPU. For example, consider these system load metrics: 0.50 (1 minute), 0.75 (5 minutes), 1.00 (15 minutes). The CPU is overloaded. In the past 15 minutes, there was at least one process waiting to be executed. 

## Graphics Processing Unit
A Graphics Processing Unit (GPU) is a processor dedicated to graphics-related tasks like rendering images and video. 

**Shared GPU**  
A shared GPU is when a physical GPU is shared between multiple virtual machines. 

**Pass-Through GPU**  
A pass-through GPU is a physical GPU dedicated to one virtual machine. 

## Memory
