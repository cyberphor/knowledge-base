# Azure Compute Services

## How to Create a Virtual Machine
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