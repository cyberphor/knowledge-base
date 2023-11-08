# Azure Monitor

## Action Groups
### How to List Action Groups
**Step 1.** Set your subscription
```bash
export SUBSCRIPTION_NAME="Personal"
az account set \
  --subscription "${SUBSCRIPTION_NAME}"
```

**Step 2.** List action groups.
```bash
az monitor action-group list
```

## Autoscale Settings
**How to List Autoscale Settings for a Specific Resource Group**
```bash
export RESOURCE_GROUP="web_app_monitor"
az monitor autoscale list \
  --resource-group "${RESOURCE_GROUP}" 
```