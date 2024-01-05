# Azure
Azure is a cloud computing platform hosted by Microsoft. 

## Azure Infrastructure
* [Physical Infrastructure](infrastructure/physical/README.md)
* [Logical Infrastructure](infrastructure/logical/README.md)

## Azure Interfaces
* [Azure Portal](interfaces/portal/README.md)
* [Azure Cloud Shell](interfaces/cloud-shell/README.md)
* [Azure PowerShell](interfaces/powershell/README.md)
* [Azure CLI](interfaces/cli/README.md)

## Azure Offerings
* [DevOps](devops/README.md)
* [Compute](compute/README.md)
* [Network](network/README.md)
* [Storage](storage/README.md)
* [Security](security/README.md)

## Cost 
### Cost Factors
The cost to use Azure is determined by the factors described below. 
* Resource Type: some resources are more expensive than others 
* Consumption: reserve capacity in advance to take advantage of the discounts offered by Azure
* Maintenance: deprovision resources when they are no longer needed to reduce cost 
* Geography: different regions will show different prices for the same resource type 
* Network Traffic: putting data in Azure is mostly free, getting data out of Azure is not (Azure maintains a "bandwidth pricing page")
* Subscription Type: Azure offers multiple [subscription types](infrastructure/logical/README.md#subscription-types) with varying costs
* Azure Marketplace: products purchased in the Azure Marketplace may include paying for third-party services (e.g., paying for SonarQube's vulnerability scanner)

### Reducing Costs
The cost of using Azure can be reduced using the techniques described below. 

**Reservations**  
Azure offers discounts when you reserve capacity ahead of time. 

**Licenses with Software Assurance**  
Licenses with *Software Assurance* are more cost-effective because you can use them on-prem and in Azure. 

**Credits**  
You can get Azure credits (i.e., "coupons") if you are a Visual Studio subscriber. 

### Cost Management
Cost Management is a service used monitoring costs and configuring spending notifications. 

### Cost Calculators
**Pricing Calculator**   
The Pricing Calculator is used for estimating how much it will cost to provision resources in Azure. 

**Total Cost of Ownership Calculator**  
The Total Cost of Ownership Calculator is used for comparing the difference in cost between hosting infrastructure on-prem vs in Azure. 