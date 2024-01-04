# Logical Infrastructure
Logical infrastructure in Azure is represented by management groups, subscriptions, resource groups, and resources. 
* [Management Groups](#management-groups)
* [Subscriptions](#subscriptions)
* [Resource Groups](#resource-groups)
* [Resources](#resources)

## Management Groups
A management group is an organizational unit used to manage multiple subscriptions. Management groups may be necessary for businesses that have subordinate organizations with similar departments but different missions. For example, a brigade could organize its subscriptions by creating a management group for each battalion. Each battalion would then have a subscription for each staff section and company. Each staff section and company would then have a resource group. Management groups can be nested. Management group IDs cannot be updated after creation.

![management-groups.png](/cloud/azure/infrastructure/logical/management-groups.png)

## Subscriptions
Subscriptions are units of billing information associated with an [Entra ID](/cloud/azure/services/security/directory/entra-id/README.md) tenant. The users, groups, and applications within the tenant manage the resources paid for by the subscription. 

### Subscription Types
There's multiple types of subscriptions. The most common types include: Free Trial, Enterprise Agreement, Azure for Students, and Pay-As-You-Go.

**Free Trial**    
Free trial subscriptions include $200 for any service for the first 30 days. 

**Enterprise Agreement**  
Enterprise Agreements can be configured to include Azure. Yet, you pay upfront. Enterprise Agreement subscriptions allow you to purchase multiple licenses and services under one agreement. They sometimes offered discounts for new licenses and Software Assurance. 

**Azure for Students**  
Azure for Students subscriptions include $100 for any service within the first 12 months. A credit-card is not required at registration. Verify your student status using your school email. 

**Pay-As-You-Go**  
Pay-As-You-Go subscriptions are billed monthly for the services you use. 

### Getting a Subscription
There's four ways to get a subscription: Free Trial, Enterprise Agreement, Microsoft Reseller, and Microsoft Partner. 

**Microsoft Reseller**  
A subscription can be purchased through the Open Value program. The Open Value program allows small to medium-size organizations with at least five computers to purchase a subscription at a discount. Government and education organizations are eligible to apply.  

**Microsoft Partner**  
A subscription can be purchased from a Microsoft partner. Microsoft partners have the business and IT expertise to make recommendations specific to your organization. 

## Resource Groups
A resource group is a collection of resources. You cannot rename or nest resource groups. Yet, if you apply a setting to a resource group, currrent and future resources inherit it. You have to specify a location for your resource groups so Azure knows where to save the resource group's metadata.

## Resources 
Resources represent what you can build, configure, deploy, etc. in Azure. For example, virtual machines, virtual networks, and databases are resources. Every resource exists within a resource group (they cannot be put it into more than one). Resources are managed using the [Azure Resource Manager](/azure/infrastructure/logical/resource-manager/README.md). *Pro-Tip: Use resource groups for resources that have the same lifecycle and use resource tags for everything else*.

*How to Determine Resource Limits*  
Resource > Settings > Usage + Quotas

### Resource Tags 
A resource tag is metadata used for to identify resources that relate to each other. A resource can have up to 50 tags. Tags applied to a resource group aren't passed down. Below are some use-cases for tagging resources. 
* Managing resources
* Managing cost
* Managing service levels
* Managing security
* Managing compliance levels
* Managing automation