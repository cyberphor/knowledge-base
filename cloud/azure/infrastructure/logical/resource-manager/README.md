# Azure Resource Manager
Azure Resource Manager (ARM) is Azure's API for routing [resource action](#resource-action) requests to [resource providers](#resource-providers). It's also used to access [Azure Arc](#azure-arc).

## Resource Access Requests
Routing a [resource action](#resource-action) request through ARM is a four-step process. 

**Step 1.** You open one of Azure's interfaces (e.g., Azure Portal, Azure Cloud Shell, Azure, PowerShell, or Azure CLI) and submit a request to perform a [resource action](#resource-action) (e.g., deploy or tag).

**Step 2.** ARM authenticates your identity using Azure's [directory services](/azure/services/security/directory-services/README.md) (e.g., Entra ID Conditional Access). 

**Step 3.** ARM authorizes your request using [Role-Based](#role-based-access-control) [Access Control](/security/concepts/access-control/README.md). 

**Step 4.** ARM forwards your request to the appropiate [resource provider](#resource-providers) for execution. 

![resource-manager.jpg](/azure/infrastructure/logical/resource-manager/resource-manager.jpg)



### Resource Providers
A resource provider is an API for executing actions within a specific Azure service. Resource providers must be added to your subscription for ARM to be aware of the roles and actions relating to the services you're interested in. Some resource providers are included with your subscription by default. Below is a list of resource providers.  

| Resource Provider             | Service                  | Actions                                                              |
| ----------------------------- | ------------------------ | -------------------------------------------------------------------- | 
| `microsoft.compute`           | Virtual machines         |                                                                      |
| `microsoft.storage`           | Azure Storage            |                                                                      |
| `microsoft.web`               | Azure Web Apps           |                                                                      |
| `microsoft.keyvault`          | Azure Key Vault          |                                                                      |
| `microsoft.cognitiveservices` | Azure Cognitive Services |                                                                      |
| `microsoft.insights`          | Azure Monitor            | Generate, collect, and manage metrics, logs, alerts, and autoscaling |

## Azure Arc
Azure Arc is a service used for managing hybrid (on-prem and Azure) and multi-cloud (e.g., Azure and Amazon Web Services) environments. It can manage the resources listed below outside of Azure.
* Virtual machines
* SQL servers
* Kubernetes clusters