# Azure CLI

## Install the Azure CLI
```bash
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```

## Prepare to Use the Azure CLI
**Step 1.** Identify your tenant and subscription IDs and save them as environment variables. 
```bash
# your tentant and subscription IDs are NOT secrets
export TENANT_ID="da3cb2a3-95dd-4a37-b857-c1264e363deb"
export SUBSCRIPTION_ID="17408d59-f3b6-43a5-a48c-c3667527f330"
```

**Step 2.** Enter the command below and authenticate when prompted. 
```bash
az login --tenant "${TENANT_ID}" --use-device-code
```

**Step 3.** Set your default subscription. 
```bash
az account set --subscription "${SUBSCRIPTION_NAME}"
```

## Find Commands
Find commands relating to Azure Blobs. 
```bash
az find blob
```

Find commands relating to virtual machines. 
```bash
az find "az vm" --output "table"
```

## Create and Configure a Managed Disk
**Step 1.** Create a resource group. 
```powershell
export RESOURCE_GROUP="managedDiskRg"
export LOCATION="eastus"
az group create --name "${RESOURCE_GROUP}" --location "${LOCATION}"
```

**Step 2.** Create a managed disk. 
```powershell
export DISK="managedDisk01"
az disk create --resource-group "${RESOURCE_GROUP}" --name "${DISK}" --sku "Standard_LRS" --size-gb 32
```

**Step 3.** Change the size of the managed disk. 
```powershell
az disk update --resource-group "${RESOURCE_GROUP}" --name "${DISK}" --size-gb 64
```

**Step 4.** Change the performance SKU of the managed disk. 
```powershell
az disk update --resource-group "${RESOURCE_GROUP}" --name "${DISK}" --sku "Premium_LRS"
```

**Step 5.** Delete the resource group. 