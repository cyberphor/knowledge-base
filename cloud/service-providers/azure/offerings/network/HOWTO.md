# Azure Network Services

## How to Create a Network Security Group Rule
**Step 1.** Define and load your environment variables. 
```bash
vim .env
```
```bash
export RESOURCE_GROUP="cybersecurity"
export NSG_01_RULE_01_NAME="Allow HTTP"
export NSG_01_RULE_01_PROTOCOL="tcp"
export NSG_01_RULE_01_PRIORITY=100
export NSG_01_RULE_01_PORT=443
export NSG_01_RULE_01_ACCESS="Allow"
```

**Step 2.** Save the name of your Network Security Group (NSG) to an environment variable. 
```bash
export NSG_01_NAME=(az network nsg list \
  --resource-group "${RESOURCE_GROUP}" \
  --query '[].name' \
  --output tsv \
)
```

**Step 3.** Create a NSG rule. 
```bash
az network nsg rule create \
  --resource-group "${RESOURCE_GROUP}" \
  --nsg-name "${NSG_NAME}" \
  --name "${NSG_01_RULE_01_NAME}" \
  --protocol "${NSG_01_RULE_01_PROTOCOL}" \
  --priority "${NSG_01_RULE_01_PRIORITY}" \
  --destination-port-range "${NSG_01_RULE_01_PORT}" \
  --access "${NSG_01_RULE_01_ACCESS}"
```