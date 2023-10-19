# App Services

## Web Apps
### Create a Web App 
**Step 1.** Define your variables. 
```bash
export SUBSCRIPTION_NAME="Personal"
export PREFIX="cyberphor"
export RESOURCE_GROUP="${PREFIX}-rg"
export LOCATION="eastus"
export ASP_NAME="${PREFIX}-asp"
export ASP_SKU="S1" # S1 (Standard) pricing tier
export WEB_APP_NAME="${PREFIX}-web-app"
```

**Step 2.** Set your subscription.
```bash
az account set \
  --subscription "${SUBSCRIPTION_NAME}"
```

**Step 3.** Create a Resource Group. 
```bash
az group create \
  --name "${RESOURCE_GROUP}" \
  --location "${LOCATION}"
```

**Step 4.** Create an App Service Plan (ASP). 
```bash
az appservice plan create \
  --name "${ASP_NAME}" \
  --resource-group "${RESOURCE_GROUP}" \
  --sku "${ASP_SKU}"
```

**Step 5.** Create a web app. 
```bash
az webapp create \
  --resource-group "${RESOURCE_GROUP}" \
  --plan "${ASP_NAME}" \
  --name "${WEB_APP_NAME}"
```