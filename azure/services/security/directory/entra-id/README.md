# Entra ID
Entra ID is a [PaaS](/cloud/concepts/README.md#cloud-service-models) offering and directory service for managing access to resources on-prem and in Azure. Access decisions are made using *Conditional Access*.  

## Entra Connect  
Entra Connect is used for syncing directory information between Active Directory and Entra ID.

## Conditional Access
Conditional Access is the [zero trust](/security/models/zero-trust/README.md) [policy engine](/security/models/zero-trust/README.md) used across multiple Entra services. Conditional Access uses *identity signals* to allow or deny access to a resource. 

**Identity Signal**  
An identity signal represents the entity requesting access. It includes the properties listed below. 
* Their identity (i.e., who they claim to be)
* Their location
* Their client (i.e., their device)