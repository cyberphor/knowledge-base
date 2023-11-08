# Azure Resource Manager
Azure Resource Manager (ARM) is an [API]() for submitting resource action requests (e.g., create, update, or delete a resource). After ARM performs *authentication* and *authorization*, ARM works with the appropiate *resource provider* to execute the request. You're interacting with ARM whenever you're using Azure Portal, Azure PowerShell, and/or Azure CLI. 

## Authentication  
ARM delegates [authentication](/security/concepts/access-control/README.md) to Azure's [directory services](/azure/services/security/directory-services/README.md). Meaning, you have to prove your identity (e.g., via Entra ID Conditional Access) before ARM does anything. 

![resource-manager.jpg](/azure/architecture/management-infrastructure/resource-manager/resource-manager.jpg)

## Authorization
Once you are authenticated, ARM evaluates your request using the [Role-Based Access Control (RBAC)](/security/concepts/access-control/README.md#role-based-access-control) model. 

### Role-Based Access Control
In the RBAC model, authorization to perform an *action* is determined using the *roles* you've been assigned with the scope of your request. 

**Action**  
An action is what you want to do with a resource (e.g., edit). 

**Role**  
A role is a set of permissions. For example, the "Editor" role can edit resources, but not delete them. 

**Scope**  
Scopes include subscriptions, management groups, resource groups, and resources. Roles (i.e., permission sets) assigned at a parent scope are inherited by child scopes. For example, if you have been assigned the "Editor" role for a resource group, you can edit all of the resources within it. 

### Resource Providers
A resource provider is an API for executing actions within a specific Azure service. Resource providers must be added to your subscription for ARM to be aware of the roles and actions relating to the services you're interested in. Some resource providers are included with your subscription by default. Below is a list of resource providers.  

| Resource Provider             | Purpose                  |
| ----------------------------- | ------------------------ |
| `microsoft.compute`           | Virtual machines         |
| `microsoft.cognitiveservices` | Azure Cognitive Services |
| `microsoft.insights`          | Azure Monitor            | 
