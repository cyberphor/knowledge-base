# Management Infrastructure
Management infrastructure in Azure is represented by accounts, subscriptions, management groups, resources, and resource groups. 

## Accounts
An Azure account is a globally unique identity that represents a customer (e.g., an individual or business). Azure accounts are used to manage Azure subscriptions and management groups. 

## Subscriptions
A subscription is a organizational unit used for managing billing and resource groups. For example, a business could organize billing and resources for each of their deparments using subscriptions (e.g., the "cyber security" subscription includes a "threat hunting" resource group and is paid for using the CISO's company credit card). 

### Subscription Types
**Free Trial**    
Free trial subscriptions include $200 for any service for the first 30 days. 

**Pay-As-You-Go**  
Pay-As-You-Go subscriptions are billed monthly for the services you use. 

**Enterprise Agreement**  
Enterprise agreement subscriptions allow you to purchase multiple licenses and services under one agreement. They sometimes offered discounts for new licenses and Software Assurance. 

**Azure for Students**  
Azure for Students subscriptions include $100 for any service within the first 12 months. A credit-card is not required at registration. Verify your student status using your school email. 

## Management Groups
A management group is an organizational unit used to manage multiple subscriptions. Management groups may be necessary for businesses that have subordinate organizations with similar departments but different missions. For example, a brigade could organize its subscriptions by creating a management group for each battalion. Each battalion would then have a subscription for each staff section and company. Each staff section and company would then have a resource group. Management groups can be nested. 

![management-groups.png](/azure/architecture/management-infrastructure/management-groups.png)

## Resource 
Resources represent what you can build, configure, deploy, etc. in Azure. For example, virtual machines, virtual networks, and databases are resources. Every resource exists within a resource group (they cannot be put it into more than one). Resources are managed using the [Azure Resource Manager](/azure/architecture/management-infrastructure/resource-manager/README.md). 

**Tags**
A tag is metadata used for to identify resources that relate to each other. Below are some use-cases for tagging resources. 
* Managing resources
* Managing cost
* Managing service levels
* Managing security
* Managing compliance levels
* Managing automation

## Resource Group 
A resource group is an organizational unit used for managing access to and/or deprovisioning multiple resources. A resource group cannot be nested under another resource group. If you apply a setting to a resource group, currrent and future resources inherit it. 


