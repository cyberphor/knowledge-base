# Logical Infrastructure
Logical infrastructure in Azure is represented by accounts, subscriptions, management groups, resources, and resource groups. 

## Accounts
An Azure account is a globally unique identity that represents a customer (e.g., an individual or business). Azure accounts are used to manage Azure subscriptions and management groups. 

## Subscriptions
A subscription is a unit of services linked to an [Entra ID](/cloud/azure/services/security/directory/entra-id/README.md) account. They are used to bill and pay for resource usage. For example, a business could organize billing and resources for each of their departments using subscriptions (e.g., the "cyber security" subscription includes a "threat hunting" resource group and is paid for using the CISO's company credit card). 
* Cloud Identity and Guest User (e.g., Microsoft Account) accounts can be linked to a subscription
* Multiple subscriptions can be linked to an account (e.g., business, engineering, and medicine are linked to Vic's account)
* Multiple accounts can be linked to a subscription (e.g., Vic, Elliot, and Bruce are linked to the engineering subscription)

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

## Management Groups
A management group is an organizational unit used to manage multiple subscriptions. Management groups may be necessary for businesses that have subordinate organizations with similar departments but different missions. For example, a brigade could organize its subscriptions by creating a management group for each battalion. Each battalion would then have a subscription for each staff section and company. Each staff section and company would then have a resource group. Management groups can be nested. Management group IDs cannot be updated after creation.

![management-groups.png](/cloud/azure/infrastructure/logical/management-groups.png)

## Resource 
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

## Resource Group 
A resource group is a collection of resources. You cannot rename or nest resource groups. Yet, if you apply a setting to a resource group, currrent and future resources inherit it. You have to specify a location for your resource groups so Azure knows where to save the resource group's metadata.
