# Azure Storage
Below is an example of how to use Azure CLI, Azure Storage, and Azure Blobs.
 
**Step 1.** Define your variables.
```bash
RESOURCE_GROUP_NAME="myStorageResourceGroup"
LOCATION="eastus"
STORAGE_ACCOUNT_NAME="myStorageAccount"
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