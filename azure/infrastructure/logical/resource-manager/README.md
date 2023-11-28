# Azure Resource Manager
Azure Resource Manager (ARM) is Azure's API for routing [resource action](#resource-action) requests to [resource providers](#resource-providers). It's also used to access [Azure Arc](#azure-arc).

## How It Works
Routing a [resource action](#resource-action) request through ARM is a four-step process. 

**Step 1.** You open one of Azure's interfaces (e.g., Azure Portal, Azure Cloud Shell, Azure, PowerShell, or Azure CLI) and submit a request to perform a [resource action](#resource-action) (e.g., deploy or tag).

**Step 2.** ARM authenticates your identity using Azure's [directory services](/azure/services/security/directory-services/README.md) (e.g., Entra ID Conditional Access). 

**Step 3.** ARM authorizes your request using [Role-Based](#role-based-access-control) [Access Control](/security/concepts/access-control/README.md). 

**Step 4.** ARM forwards your request to the appropiate [resource provider](#resource-providers) for execution. 

![resource-manager.jpg](/azure/infrastructure/logical/resource-manager/resource-manager.jpg)

### Role-Based Access Control    
Role-Based Access Control (RBAC) is when the authorization to perform an *action* is determined using the *roles* you've been assigned withing the scope of your request. 

#### Role  
A role is a set of permissions. For example, the "Editor" role can edit resources, but not delete them. 

#### Scope  
Scopes include subscriptions, management groups, resource groups, and resources. Roles (i.e., permission sets) assigned at a parent scope are inherited by child scopes. For example, if you have been assigned the "Editor" role for a resource group, you can edit the resources inside of it. 

#### Resource Action  
A resource action represents what you want to happen with a resource. Resources can be provisioned using [resource templates](/azure/infrastructure/logical/resource-templates/README.md) and protected from deletion using *resource locks*. Use Microsoft's ["Move" Operation Support page](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/move-support-resources) to lookup what resources can be moved to other resource groups, subscriptions, etc. 

*Resource Locks*  
Resource locks prevent resources, resource groups, and subscriptions from being changed or deleted. They are applied regardless of the resource's RBAC settings (i.e., they are enforced even if you own the resource). As an owner, you must remove the lock first if you want to delete it. There are two types of resource locks. 
* Delete: only prevents a resource from being deleted (not read or changed) 
* ReadOnly: only prevents a resource from being changed or deleted (not read)

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