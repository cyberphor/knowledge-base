# Azure Compute Services
Azure's [IaaS](/cloud/concepts/README.md#cloud-service-models) offerings include the compute services listed and described below. 
* [Virtual Machines](#virtual-machines)
* [Containers](#containers)
* [Serverless Functions](#serverless-functions)

## Virtual Machines
[Virtual machines](/virtualization/virtual-machines/README.md) are provided through Azure's [IaaS](/cloud/concepts/README.md#cloud-service-models) offerings. 

**Virtual Machine Components**  
An virtual machine in Azure is represented by the components listed below. 
* Size: number of processor cores and amount of memory
* Disk: hard disk drive vs solid state drive
* Network settings: virtual network, public IP address, and port configuration

**Scale Sets**  
A scale set is a resource used to load balance and [horizontally scale](/cloud/concepts/README.md#cloud-benefits) of identical virtual machines. If you wanted to vertically scale a virtual machine, you would change the size of it. 

**Availability Sets**  
An availability set is a resource used to separate virtual machines into update or fault domains. Availability sets are free. 

*Update Domain*  
An update domain is group of virtual machines that can be updated and/or rebooted at the same time. 

*Fault Domain*  
A vault domain is a group of virtual machines with the same source of power and network switch. 

**Azure Virtual Desktop**  
Azure Virtual Desktop (AVD) is a IaaS offering that provides a cloud-hosted version of a client operating system (e.g., Windows 10 or 11). AVD can be protected using Role-Based Access Control and Multi-Factor Authentication. 

## Containers
[Containers](/virtualization/containers/README.md) are provided through Azure's [PaaS](/cloud/concepts/README.md#cloud-service-models) offerings. 

**Azure Container Instances**  
Azure Container Instances (ACI) is a PaaS offering that allows you to run containers. 

**Azure Container Apps**  
Azure Container Apps (ACA) is a PaaS offering that allows you to run, scale, and load balance containers. 

**Azure Kubermetes Service**  
Azure Kubernetes Service (AKS) is a PaaS offering that allows you to run and manage containers using Kubernetes. 

## Serverless Functions
[Serverless functions](/virtualization/serverless-functions/README.md) are provided through Azure's [PaaS](/cloud/concepts/README.md#cloud-service-models) offerings. 

**Azure Functions**  
Azure Functions is a PaaS offering used for serverless functions. 