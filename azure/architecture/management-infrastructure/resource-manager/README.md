# Azure Resource Manager
Azure Resource Manager is what faciliates the creation, access, update, and deletion of resources in Azure. 

**Access Management**  
Azure Resource Manager enforces the access decisions made by Azure's directory services. Permissions granted at the parent scope level are inherited by child scopes. For example, if you allow someone to do something at the subscription-level, they are allowed to do it to the resource groups and resources within the subscription. 

![resource-manager.jpg](/azure/architecture/management-infrastructure/resource-manager/resource-manager.jpg)