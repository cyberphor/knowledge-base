# Azure CLI

## Find Commands
```bash
# find commands relating to Azure Blobs
az find blob
```

## Create and Configure a Managed Disk
**Step 1.** Login to Azure. 
```bash
az login
```

**Step 2.** Create a resource group. 
```powershell
export RESOURCE_GROUP="managedDiskRg"
export LOCATION="eastus"
az group create --name "${RESOURCE_GROUP}" --location "${LOCATION}"
```

**Step 3.** Create a managed disk. 
```powershell
export DISK="managedDisk01"
az disk create --resource-group "${RESOURCE_GROUP}" --name "${DISK}" --sku "Standard_LRS" --size-gb 32
```

**Step 4.** Change the size of the managed disk. 
```powershell
az disk update --resource-group "${RESOURCE_GROUP}" --name "${DISK}" --size-gb 64
```

**Step 5.** Change the performance SKU of the managed disk. 
```powershell
az disk update --resource-group "${RESOURCE_GROUP}" --name "${DISK}" --sku "Premium_LRS"
```

**Step 6.** Delete the resource group. 