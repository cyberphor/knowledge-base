# Azure
Azure is a cloud computing platform hosted by Microsoft. 

## Azure Infrastructure
* [Physical Infrastructure](/cloud/azure/infrastructure/physical/README.md)
* [Logical Infrastructure](/cloud/azure/infrastructure/logical/README.md)

## Azure Interfaces
* [Azure Portal](/cloud/azure/interfaces/portal/README.md)
* [Azure Cloud Shell](/cloud/azure/interfaces/cloud-shell/README.md)
* [Azure PowerShell](/cloud/azure/interfaces/powershell/README.md)
* [Azure CLI](/cloud/azure/interfaces/cli/README.md)

## Azure Services
* [Compute](/cloud/azure/services/compute/README.md)
* [Network](/cloud/azure/services/network/README.md)
* [Storage](/cloud/azure/services/storage/README.md)
* [Security](/cloud/azure/services/security/README.md)

## Cost 
### Cost Factors
The cost to use Azure is determined by the factors described below. 
* Resource Type: some resources are more expensive than others 
* Consumption: reserve capacity in advance to take advantage of the discounts offered by Azure
* Maintenance: deprovision resources when they are no longer needed to reduce cost 
* Geography: different regions will show different prices for the same resource type 
* Network Traffic: putting data in Azure is mostly free, getting data out of Azure is not (Azure maintains a "bandwidth pricing page")
* Subscription Type: Azure offers multiple [subscription types](/cloud/azure/infrastructure/logical/README.md#subscription-types) with varying costs
* Azure Marketplace: products purchased in the Azure Marketplace may include paying for third-party services (e.g., paying for SonarQube's vulnerability scanner)

### Cost Management
Cost Management is a service used monitoring costs and configuring spending notifications. 

### Cost Calculators
**Pricing Calculator**   
The Pricing Calculator is used for estimating how much it will cost to provision resources in Azure. 

**Total Cost of Ownership Calculator**  
The Total Cost of Ownership Caclulator is used for comparing the difference in cost between hosting infrastructure on-prem vs in Azure. 

