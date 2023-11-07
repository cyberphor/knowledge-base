# Management Infrastructure
Management infrastructure in Azure is represented by accounts and scopes. 

## Accounts
An Azure account is a globally unique identity that represents a customer (e.g., an individual or business). Azure accounts are used to manage Azure subscriptions and management groups. 

## Scope  
A scope is one or more resources. For example, subscriptions, management groups, resource groups, and resources are all scopes. Scopes are protected using [Role-based Access Control (RBAC)](/security/concepts/access-control/README.md#role-based-access-control) and the [Azure Resource Manager](/azure/architecture/management-infrastructure/resource-manager/README.md).  

### Subscriptions
A subscription is a organizational unit used for managing billing and resource groups. For example, a business could organize billing and resources for each of their deparments using subscriptions (e.g., the "cyber security" subscription includes a "threat hunting" resource group and is paid for using the CISO's company credit card). 

**Subscription Types**  
There are four Azure subscription types. 

*Free Trial*  
Free trial subscriptions include $200 for any service for the first 30 days. 

*Pay-As-You-Go*  
Pay-As-You-Go subscriptions are billed monthly for the services you use. 

*Enterprise Agreement*  
Enterprise agreement subscriptions allow you to purchase multiple licenses and services under one agreement. They sometimes offered discounts for new licenses and Software Assurance. 

*Azure for Students*  
Azure for Students subscriptions include $100 for any service within the first 12 months. A credit-card is not required at registration. Verify your student status using your school email. 

### Management Groups
A management group is an organizational unit used to manage multiple subscriptions. Management groups may be necessary for businesses that have subordinate organizations with similar departments but different missions. For example, a brigade could organize its subscriptions by creating a management group for each battalion. Each battalion would then have a subscription for each staff section and company. Each staff section and company would then have a resource group. Management groups can be nested. 

![management-groups.png](/azure/architecture/management-infrastructure/management-groups.png)

### Resource Groups
**Resource**  
Resources represent what you can build, configure, deploy, etc. in Azure. Virtual machines, virtual networks, and databases are some examples. Every resource must be placed into a resource group (they cannot be put it into more than one).

**Resource Group**  
A resource group is an organizational unit used for managing access to and/or deprovisioning multiple resources. A resource group cannot be nested under another resource group. If you apply a setting to a resource group, currrent and future resources inherit it. 

**Resource Providers**  
You must register resource providers under your Azure subscription to work with specific Azure services. Below is a list of common resource providers.  

| Resource Provider             | Purpose                  |
| ----------------------------- | ------------------------ |
| `microsoft.compute`           | Virtual machines         |
| `microsoft.cognitiveservices` | Azure Cognitive Services |
| `microsoft.insights`          | Azure Monitor            | 

