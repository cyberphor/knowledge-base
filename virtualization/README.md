# Virtualization
* [Virtual Machines](#virtual-machines)
* [Containers](containers/README.md)
* [Serverless Functions](#serverless-functions)

## Virtual Machines
A virtual machine is a computer emulated using a hypervisor. 

**Single Root Input/Output Virtualization**  
Single Root Input/Output Virtualization (SR-IOV) technology is used to give virtual machines direct access to the host's PCIe bus (specifically the network interface cards on it). SR-IOV is used to improve the efficiency of a virtual machine's networking ability.

## Hypervisors
**Type 1 Hypervisor**  
A Type 1 Hypervisor is an operating system used to host virtual machines. 

**Type 2 Hypervisor**  
A Type 2 Hypervisor is a program used to host virtual machines. 

**Oversubscription**  
Oversubscription is when you allocate more resources to your virtual machines than what your physical host has available. 

**Memory Ballooning**  
Memory ballooning is when a hypervisor reclaims unused memory from the virtual machine to avoid starving.  

**Anti-Affinity**  
Anti-affinity is when virtual machines are distributed across multiple hosts to avoid single points of failure.

## Containers
A container is a software package used for hosting an application. It contains the operating system and dependencies required, but not the hardware. The lack of virtualized hardware makes them smaller and more portable than virtual machines.  

## Serverless Functions
Serverless functions allow you to execute code in response to an event. They can be invoked manually (e.g., HTTP or gRPC request) or on a schedule. 

**Stateless Functions**  
Stateless functions do not remember context. 

**Stateful Functions**  
Stateful functions (aka "durable functions") use context passed to them for state. 
