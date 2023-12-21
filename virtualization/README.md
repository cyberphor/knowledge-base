# Virtualization

## Virtual Machines
A virtual machine is a computer emulated using a hypervisor. 

## Hypervisors
**Type 1 Hypervisor**  
A Type 1 Hypervisor is an operating system used to host virtual machines. 

**Type 2 Hypervisor**  
A Type 2 Hypervisor is a program used to host virtual machines. 

**Oversubscription**  
Oversubscription is when you allocate more resources to your virtual machines than what your physical host has available. 

**Memory Ballooning**  
Memory ballooning is when a hypervisor reclaims unused memory from the virtual machine to avoid starving.  

## Containers
A container is a software package used for hosting an application. It contains the operating system and dependencies required, but not the hardware. The lack of virtualized hardware makes them smaller and more portable than virtual machines.  

## Serverless Functions
Serverless functions allow you to execute code in response to an event. They can be invoked manually (e.g., HTTP or gRPC request) or on a schedule. 

**Stateless Functions**  
Stateless functions do not remember context. 

**Stateful Functions**  
Stateful functions (aka "durable functions") use context passed to them for state. 
