# Azure RBAC
* [Create a Management Group](#create-a-management-group)
* [Add a Custom RBAC Role](#add-a-custom-rbac-role)
* [Assign an RBAC Role](#assign-an-rbac-role)

## Create a Management Group
**Step 1.** Login to the Azure Portal. 

**Step 2.** Search for "entra id."

**Step 3.** Click "Manage > Properties."

**Step 4.** Set "Access management for Azure resources" to "Yes" so you're allowed to manage access to subscriptions and management groups within the tenant. 

**Step 5.** Click "Save."

**Step 6.** Search for "management groups" and click "Start using management groups."

**Step 7.** Click "Create" and set the management group's information. 
* Management group ID: `ai2c-cybersecurity-mg01`
* Management group display name: `ai2c-cybersecurity-mg01`

**Step 8.** Click the new management group.

**Step 9.** Click "Subscriptions."

**Step 10.** Click "Add" and select the correct subscription.

**Step 11.** Click "Save."

**Step 12.** Click the subscription's name and copy the subscription ID to your custom role definition. 

## Add a Custom RBAC Role
**Step 1.** Login to Azure Cloud Shell and select the PowerShell environment. 

**Step 2.** Click "Upload/download files > Upload."

**Step 3.** Select the JSON file that contains your custom role definition. 

**Step 4.** Enter the command below. 
```powershell
New-AzRole -InputFile $HOME/custom-role-definition.json
```

## Assign an RBAC Role
**Step 1.** Login to the Azure Portal.

**Step 2.** Search for "entra id."

**Step 3.** Click "Manage > Users."

**Step 4.** Click "New user > Create new user."

**Step 5.** Set the user's information.
* Username (aka User Principal Name): `elliot.alderson@evil.corp`
* Display name: `Alderson, Elliot`

**Step 6.** Set their password information. 
* Select "Let me create the password"
* Initial password: `LongAndStrongPassphrase2024!`

**Step 7.** Click "Create."

**Step 8.** Click the new user and copy their user principal name.

**Step 9.** Search for "management groups."

**Step 10.** Select the management group previously created (e.g., `ai2c-cybersecurity-mg01`).

**Step 11.** Click "Access control (IAM)."

**Step 12.** Click "Add > Add role assignment."

**Step 13.** Select the custom role definition previously added. 

**Step 14.** Click "Next", click "Select members", and select the user previously created (e.g., `elliot.alderson@evil.corp`). 

**Step 15.** Click "Review + assign."