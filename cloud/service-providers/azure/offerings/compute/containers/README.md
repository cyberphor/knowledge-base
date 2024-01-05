# Azure Containers
Containers in Azure can be configured to use Azure Files or Azure Disks. 

## Azure Container Instances  
The Azure Container Instances service is used to run containers. 

### Container Groups
A container group is one or more containers on the same host. They share the same compute, storage, and network (e.g., public IP address) resources. They also have the same lifecycle. Container groups can be deployed using an ARM template or a YAML file. Use an ARM template if you need Azure-based resources. YAML files are not specific to Azure. Container groups do not support port mapping (because there would be a conflict if two containers needed the same host port). 

![container-groups](container-groups.png)

## Azure Container Apps  
Azure Container Apps (ACA) is used to run, scale, and load balance containers. 

## Azure Kubernetes Service  
The Azure Kubernetes Service (AKS) is used to run and manage containers using Kubernetes. 