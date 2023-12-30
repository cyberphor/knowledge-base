# Azure RBAC
* [Security Principal](#security-principals)
* [Role Definitions](#role-defintions)
* [Scopes](#scopes)
* [Assignments](#assignments)
* [Resource Actions](#resource-actions)

**Role-Based Access Control**  
Role-Based Access Control (RBAC) is when *roles* are used to evaluate access. 

**Azure RBAC**  
Azure RBAC is the authorization system used by Azure Resource Manager.  

## Security Principals
A security principal represents the [entity](/security/access-management/identity/README.md#entity) requesting access. The entities listed below are considered security principals. 
* Users
* Groups
* Service principals
* Managed entities

## Role Definitions
A role definition is one or more *permission sets* defined within a JSON object. 

### Role Types  
Azure uses three different role types to implement RBAC: classic subscription administrator roles, Entra ID roles, and Azure RBAC roles. 

![azure-rbac-entra-id.png](/cloud/azure/infrastructure/logical/resource-manager/rbac/azure-rbac-entra-id.png)

**Classic Subscription Administrator Roles**  
Classic subscription administrator roles used only three roles to manage access at the subscription level. They will be replaced by Azure RBAC roles in 2024. 
* Account Administrator
* Service Administrator
* Co-Administrator

**Entra ID Roles**  
Entra ID roles are used to manage access to Entra ID resources (e.g., users, groups, and domains). Access is defined at the tenant level. 

**Azure RBAC Roles**  
Azure RBAC roles are used to manage access to resources across Azure. Access can be defined at different scopes (e.g., management groups, subscriptions, resource groups, and resources). 

### Built-in Role Definitions
Azure includes built-in role definitions such as: Reader, Contributor, User Access Administrator, and Owner.

**Reader**  
Entities assigned the Reader role can view resources. 

**Contributor**  
Entities assigned the the Contributor role can create and edit resources, but they cannot delegate access to others. 

**User Access Administrator**  
Entities assigned the User Access Administrator role can manage access to resources. 

**Owner**  
Entities assigned the Owner role can delegate access to others. For example, if you're an Owner, you can grant the ability to make access-related decisions to other entities. The classic subscription administrator roles listed below are assigned the owner role at the subscription-level. 
* Service Administrator 
* Co-Administrator

### Permission Sets  
Every permission set includes a name to describe the permissions. Below are some common examples. NotAction permission sets determine the effective permissions for a role. For example, if you're allowed to create, read, update, and delete a resource but the NotAction permission set for your role includes "delete," you're not allowed to delete the resource. 
* Actions: a list of permissions granted (e.g., "*" or create, read, update, and delete)
* NotActions: a list of permissions subtracted from the Actions permission set (e.g., delete)
* AssignableScopes: a list of endpoints where scopes where the role definition can be assigned (e.g., "/subscriptions/123/resourceGroups/MyResourceGroup")

![role-definition.png](/cloud/azure/infrastructure/logical/resource-manager/rbac/role-definition.png)

## Scopes 
A scope represents the level of access requested by a security principal. For example, the scope of deleting a virtual machine is at the resource level. The scope of requesting to delete a resource group is at the resource group level. Scopes include the following: subscriptions, management groups, resource groups, and resources. 

## Assignments
An assignment is when a security principal is given a role definition within a scope. Role definitions assigned at a parent scope are inherited by child scopes. For example, if you have been assigned the "Contributor" role for a resource group, you can create resources inside of it. In the image below, the "Marketing" group is assigned the "Contributor" role for the "Pharma-sales" resource group. The scope of this assignment is at the resource group level. The "Marketing" group has not been granted access to anything outside of the "Pharma-sales" resource group. 

![role-assignment.png](/cloud/azure/infrastructure/logical/resource-manager/rbac/role-assignment.png)

## Resource Actions  
A resource action represents what you want to happen with a resource. Resources can be provisioned using [resource templates](/azure/infrastructure/logical/resource-templates/README.md) and protected from deletion using *resource locks*. Use Microsoft's ["Move" Operation Support page](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/move-support-resources) to lookup what resources can be moved to other resource groups, subscriptions, etc. 

### Resource Locks  
Resource locks prevent resources, resource groups, and subscriptions from being changed or deleted. They are applied regardless of the resource's RBAC settings (i.e., they are enforced even if you own the resource). As an owner, you must remove the lock first if you want to delete it. There are two types of resource locks. 
* Delete: only prevents a resource from being deleted (not read or changed) 
* ReadOnly: only prevents a resource from being changed or deleted (not read)