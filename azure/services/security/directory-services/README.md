# Directory Services

**Directory**  
A directory is a "book of rules." 

**Directory Services**  
Directory services are used for identity and access management (e.g., who has access to what). Below is a list of directory services. 
* Creating an account (i.e., an entity to represent someone)
* Creating a group
* Adding an account to a group
* Determining if an account is authorized to access a resource (account lookups are sent over LDAP and authorization is determined using ACLs codified in NTDS.dit) 
* Deleting a group

## Active Directory Users and Computers
Active Directory Users and Computers is a directory service for on-prem resources. 

## Entra ID  
Entra ID is a [PaaS](/cloud/concepts/README.md#cloud-service-models) offering and directory service for on-prem and Azure resources.

**Entra Connect**  
Entra Connect is used for syncing directory information between Active Directory and Entra ID. 
