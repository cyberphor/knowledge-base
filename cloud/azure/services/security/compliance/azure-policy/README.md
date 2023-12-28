# Azure Policy
Azure Policy is a service for managing *Policy Definitions* and *Policy Initiatives.* Azure Policy allows you to enforce compliance requirements. It can also be integrated with Azure DevOps. Enforcing compliance via Azure Policy is a four step process. 
1. Create a Policy Definition 
3. Assign the Policy Definition
4. Monitor for compliance

## Policy Definitions  
A Policy Definition describes how a resource must be configured. Policy Definitions are used for compliance requirements. If you create one at a parent scope, it will be inherited by child scopes. You can use built-in Policy Definitions, create your own, or import them from another source (e.g., JSON files on GitHub). 

**Use Cases**  
* Restricting the types of resources deployed (e.g., only virtual machines with SKU "XYZ")
* Restrict where resources are deployed
* Enforce tagging and specify allowed values
* Run inventory audits using the Azure Backup service

## Policy Initiatives
An Policy Initiative is one or more Policy Definitions with a focus on meeting security objectives. You can use built-in Policy Initiatives, create your own, or import them from another source (e.g., JSON files on GitHub). After an Policy Initiative has been created, it must be assigned to a subscription.

**Use Cases**  
* Audit machines for weak password settings
* Configure machines to run Azure Monitor Agent
* Configure SQL servers to run Azure Defender
