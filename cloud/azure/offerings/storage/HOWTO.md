# Azure Storage
* [Create a Storage Account Using Azure Portal](#create-a-storage-account-using-azure-portal)
* [Create a Storage Account Using Azure CLI](#create-a-storage-account-using-azure-cli)
* [Create a SAS Token Using the Azure Portal](#create-a-sas-token-using-the-azure-portal)
* [Create a Virtual Machine Using a Template and PowerShell](#create-a-virtual-machine-using-a-template-and-powershell)
* [Create a File Share Using the Azure Portal](#create-a-file-share-using-the-azure-portal)
* [Configure Network Access for a Storage Account](#configure-network-access-for-a-storage-account)

## Create a Storage Account Using Azure Portal
**Step 1.** Login to the Azure Portal.

**Step 2.** Search for and select "storage accounts." 

**Step 3.** Click "Create."

**Step 4.** Set the "Project details."
* Subscription: (your subscription)
* Resource group: `myResourceGroup`

**Step 5.** Set the "Instance details."
* Storage account name: `myStorageAccount2`
* Region: `eastus`

**Step 6.** Click "Review + create."

**Step 7.** Navigate to the storage account you just created. 

**Step 8.** Click "Data management > Geo-Replication" and review the "Primary/Secondary Location" field (e.g. Secondary: `westus`).

**Step 9.** Click "Settings > Configuration."

**Step 10.** Set "Replication" to "Locally-redundant storage (LRS)" and click "Save."

**Step 11.** Click "Data management > Geo-Replication" again to confirm the your data is no longer being replicated.

**Step 12.** Click "Settings > Configuration."

**Step 13.** Set "Blob access tier (default)" to "Cool" and click "Save."

## Create a Storage Account Using Azure CLI
**Step 1.** Define your variables.
```bash
RESOURCE_GROUP_NAME="myResourceGroup"
LOCATION="eastus"
STORAGE_ACCOUNT_NAME="myStorageAccount1"
STORAGE_SKU="Standard_LRS"
STORAGE_KIND="StorageV2"
CONTAINER_NAME="myBlobContainer"
BLOB_NAME="malware.exe"
BLOB_PATH=".\\$BLOB_NAME"
```

**Step 2.** Create a resource group.
```bash
az group create \
  --name $RESOURCE_GROUP_NAME \
  --location $LOCATION
```

**Step 3.** Create a storage account. 
```bash
az storage account create \
  --name $STORAGE_ACCOUNT_NAME \
  --resource-group $RESOURCE_GROUP_NAME \
  --location $LOCATION \
  --sku $STORAGE_SKU \
  --kind $STORAGE_KIND
```

**Step 4.** Create a blob storage container. 
```bash
az storage container create \
  --name $CONTAINER_NAME \
  --account-name $STORAGE_ACCOUNT_NAME
```

**Step 5.** Upload a blob to the blob storage container.
```bash
az storage blob upload \
  --account-name $STORAGE_ACCOUNT_NAME
  --container-name $CONTAINER_NAME \
  --file $BLOB_PATH \
  --name $BLOB_NAME 
```

**Step 6.** Set the blog storage container’s access level.

## Create a SAS Token Using the Azure Portal
In this task, you're going to create a SAS token restrict it to entities with the "storage blob data owner" role.

**Step 1.** Login to the Azure Portal. 

**Step 2.** Search for and select "storage accounts."

**Step 3.** Navigate to a blob within your storage account. 

**Step 4.** Click on the ellipse and click "Generate SAS." 

**Step 5.** Set the SAS token's start date.

**Step 6.** Click "Generate SAS token and URL" and copy the "Blob SAS URL." 

**Step 7.** In the "Overview" pane, change the "Authentication method" from "Access key" to "Entra ID User Account." 

**Step 8.** Click "Access Control (IAM)."

**Step 9.** Click "Add role assignment."

**Step 10.** Search for and select "storage blob data owner."

**Step 11.** Click "Next," add some members (e.g., yourself), and click "Review + assign."

## Create a Virtual Machine Using a Template and PowerShell
**Step 1.** Login to the Azure Cloud Shell and select the PowerShell environment. 

**Step 2.** Upload a virtual machine parameters file (e.g., JSON file).
```json
{
  "$schema": "https://schema...",
  "contentVersion": "1.0.0",
  "parameters": {
    "vmSize": { 
      "value": "Standard_D2s_v3" 
    },
    "adminUserName": {
      "value": "victor"
    },
    "adminPassword": {
      "value": "LongAndStrongPassPhrase2024!"
    }
  }
}
```

**Step 3.** Upload a virtual machine template file (e.g., JSON file).

**Step 4.** Define your variables.
```powershell
$RESOURCE_GROUP_NAME = "myResourceGroup"
$LOCATION = "eastus"
```

**Step 5.** Create a virtual machine using the uploaded JSON files. 
```powershell
New-AzResourceGroupDeployment `
  -ResourceGroupName $RESOURCE_GROUP_NAME `
  -TemplateFile vm-template.json `
  -TemplateParameterFile vm-parameters.json `
  -AsJob
```

## Create a File Share Using the Azure Portal
In this task, you're going to create a file share and add it to an existing virtual machine.

**Step 1.** Login to the Azure Portal.

**Step 2.** Search for and select "storage accounts." 

**Step 3.** Click "Data storage > File shares."

**Step 4.** Click "+ File share, give the share a name, and click "Create."

**Step 5.** Click file share you just created.

**Step 6.** Click "Connect" and copy the provided script.

**Step 7.** Search for and select "virtual machines."

**Step 8.** Click the virtual machine previously created.

**Step 9.** Click "Operations > "Run command" and click "RunPowerShellScript."

**Step 10.** Paste the script you copied and click "Run."

**Step 11.** Replace the PowerShell script with the commands below and click "Run" again.
```powershell
New-Item -Type Directory -Path "Z:\recipes"
New-Item -Type File -Path "Z:\recipes\chicago-style-deep-dish-pizza.txt"
```

## Configure Network Access for a Storage Account
**Step 1.** Login to the Azure Portal.

**Step 2.** Search for and select "storage accounts." 

**Step 3.** Click "Security + networking > Networking."

**Step 4.** In the "Firewalls and virtual networks" tab, set "Public network access" to "Enabled from selected virtual networks and IP addresses."

**Step 5.** Select "Add your client IP address" and click "Save."