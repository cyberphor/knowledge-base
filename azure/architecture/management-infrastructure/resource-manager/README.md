# Azure Resource Manager
RBAC in Azure is hierarchical. Permissions granted at the parent scope level are inherited by child scopes. For example, if you allow someone to do something at the subscription-level, they are allowed to do it to the resource groups and resources within the subscription. RBAC in Azure is enforced using the Azure Resource Manager.

![resource-manager.jpg](/azure/architecture/management-infrastructure/resource-manager/resource-manager.jpg)