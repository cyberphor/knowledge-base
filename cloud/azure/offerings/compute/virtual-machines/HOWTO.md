# Azure Virtual Machines
* [Create a Virtual Machine Using the Azure CLI](#create-a-virtual-machine-using-the-azure-cli)
* [Create a Virtual Machine Using the Azure Portal and an ARM Template](#create-a-virtual-machine-using-the-azure-portal-and-an-arm-template)

## Create a Virtual Machine Using Azure CLI
**Step 1.** Define and load your environment variables. 
```bash
vim .env
```
```bash
export RESOURCE_GROUP="cybersecurity"
export LOCATION="eastus"
export VM_NAME="VM1"
export VM_SIZE="Standard_B1ls"
export VM_IMAGE="Ubuntu2204"
export VM_AUTH_TYPE="ssh"
export VM_ADMIN_USER="cyberphor"
export VM_TAGS="department=cybersecurity"
```

**Step 2.** Create a resource group.
```bash
az group create \
  --name "${RESOURCE_GROUP}" \
  --location "${LOCATION}"
```

**Step 3.** Create a virtual machine.
```bash
az vm create \
  --resource-group "${RESOURCE_GROUP}" \
  --name "${VM_NAME}" \
  --size "${VM_SIZE}" \
  --image "${VM_IMAGE}" \
  --authentication-type "${VM_AUTH_TYPE}" \
  --admin-user "${VM_ADMIN_USER}" \
  --generate-ssh-keys \
  --tags "${VM_TAGS}" 
```

## Create a Virtual Machine Using the Azure Portal and an ARM Template
**Step 1.** Go the "Code Samples" page on Microsoft and select the "Azure Resource Manager" filter. 

**Step 2.** Search and click "deploy a simple windows vm."

**Step 3.** Click "Deploy to Azure."

**Step 4.** Click "Edit template."

**Step 5.** Change the virtual machine name and click "Save."

**Step 6.** Click "Create new" next to the "Resource group" field. 

**Step 7.** Enter a name for the resource group. 

**Step 8.** Set an admin username and password. 

**Step 9.** Set the "DNS Label Prefix" and click "Create."