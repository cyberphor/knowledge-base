# Azure Monitor

## Action Groups
### List Action Groups
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