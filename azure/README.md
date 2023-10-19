# Azure

## Subscriptions
### Set Your Subscription
**Step 1.** Define your variables. 
```bash
export SUBSCRIPTION_NAME="Personal"
```

**Step 2.** Set your subscription.
```bash
az account set \
  --subscription "${SUBSCRIPTION_NAME}"
```

## Resource Groups
### Create a Resource Group
**Step 1.** Define your variables. 
```bash
export SUBSCRIPTION_NAME="Personal"
export PREFIX="cyberphor"
export RESOURCE_GROUP="${PREFIX}-rg"
```

**Step 2.** Create a resource group.
```bash
az group create \
  --name "${RESOURCE_GROUP}" \
  --location "${LOCATION}"
```