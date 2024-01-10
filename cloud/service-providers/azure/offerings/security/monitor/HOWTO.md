# Azure Monitor
* [Log Analytics](#log-analytics)

## Log Analytics
### Deploy Your Environment
**Step 1.** Create a resource group, VNet, subnet, and virtual machine. 

**Step 2.** Register the "Microsoft.Insights" and "Microsoft.AlertsManagement" resource providers. If you don't do this step, you won't have the ability to deploy resources relating to Azure Monitor. 
```powershell
Register-AzResourceProvider -ProviderNamespace Microsoft.Insights
Register-AzResourceProvider -ProviderNamespace Microsoft.AlertsManagement
```

### Deploy a Log Analytics Workspace
**Step 1.** Login to the Azure Portal. Search for and select "log analytics workspaces." Then, click "Create."

**Step 2.** Enter the project and instance details. Then, create the resource.
* Subscription: `Personal`
* Resource group: `myResourceGroup`
* Name: `analytics-001`

### Create an Automation Account
**Step 1.** Login to the Azure Portal. Search for and select "automation accounts." Then, click "Create."

**Step 2.** Enter the project and instance details. Then, create the resource.
* Subscription: `Personal`
* Resource group: `myResourceGroup`
* Automation account name: `automation-001`
* Region: `East US`

**Step 3.** Navigate to the Automation Account and click "Configuration Management > Inventory." Select the Log Analytics workspace you previously created and click "Enable."

**Step 4.** Click "Update management > Enable."

### Configure Diagnostic Settings
**Step 1.** Login to the Azure Portal and navigate to the virtual machine you previously created. Then, click "Monitoring > Diagnostic settings." 

**Step 2.** Click "Enable guest-level monitoring."

**Step 3.** Click the "Logs" tab. Select the logs you want to collect. 

**Step 4.** Click "Monitoring > Logs." Then, click "Enable." Select the Log Analytics workspace you created earlier and click "Enable." 

### Create an Alert
**Step 1.** Login to the Azure Portal. Search for and select "monitor." 

**Step 2.** Click "Metrics" and scope Metrics Explorer to the virtual machine you previously created.

**Step 3.** Pick an metric (e.g., CPU percentage). 

**Step 4.** Click "New alert rule."

**Step 5.** Click "Add a condition" and configure the "Alert logic."
* Threshold: "Static"
* Operator: "Greater Than"
* Aggregation Type: "Average"
* Threshold Value: 2

**Step 6.** Configure the alert's "Evaluated based on" section.
* Period: 1 minute
* Frequency of evaluation: 1 minute

**Step 7.** Click "Done" and then, "Next: Actions."

**Step 8.** Click "Create action group." Then enter the project and instance details. 
* Subscription: `Personal`
* Resource group: `myResourceGroup`
* Action group name: `action-group-001`
* Display name: `action-group-001`

**Step 9.** Click "Next: Notifications" and configure the condition's notification settings.
* Notification type: `Email/SMS message/Push/Voice`
* Name: `Admin Email`
* Email: `victor@devops.edu`

**Step 10.** Click "Review + create" and "Create" to add the condition information to the alert. 

**Step 11.** Click "Next: Details" and enter a "Alert rule name" (e.g., "CPU usage threshold exceeded"). Then, click "Review + create" and "Create."

### Query Your Log Analytics Workspace 
**Step 1.** Login to the Azure Portal. Search for and select "monitor." 

**Step 2.** Click "Logs" and scope Log Analytics to the virtual machine you previously created.

**Step 3.** Enter a KQL query and click "Run."
```kql
InsightMetrics
| where TimeGenerated > ago(1h)
| where name == "AvailableMB"
| project TimeGenerated, Name, Val
| render timechart
```
