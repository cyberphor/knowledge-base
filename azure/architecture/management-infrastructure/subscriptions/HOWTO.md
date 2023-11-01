# Azure Subscriptions

**How to Set Your Subscription**  
**Step 1.** Define your variables. 
```bash
export SUBSCRIPTION_NAME="Personal"
```

**Step 2.** Set your subscription.
```bash
az account set \
  --subscription "${SUBSCRIPTION_NAME}"
```
