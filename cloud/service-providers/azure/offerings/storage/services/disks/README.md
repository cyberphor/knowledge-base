# Azure Disks
Azure Disks is a service for creating virtual machine data disks. The maximum capacity of an Azure Disk resource is 32,767 GBs. 

## Unmanaged Disks
When you use an unmanaged disks, you're responsible for the disk and the storage account that contains it. Storage accounts are limited to 20,000 IO operations per second (40 virtual hard disks at full speed). This means, you'll need to manually add more storage accounts when its time to scale. 

## Managed Disks
When you use a managed disks, Azure manages the disk and the storage account used to contain it.