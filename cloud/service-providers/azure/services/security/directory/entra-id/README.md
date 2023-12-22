# Entra ID
Entra ID is an identity management service for on-prem, Microsoft 365, and Azure-based resources. It is a [PaaS](/cloud/concepts/README.md#cloud-service-models) offering and includes user-friendly features. 
* Convenience: cross-platform, SSO, and password self-service
* Security: MFA and RBAC 

**Active Directory Domain Services vs Entra ID**
| Difference | AD DS                                      | Entra ID                                       |
| ---------- | ------------------------------------------ | ---------------------------------------------- |
| Scope      | Directory service for on-prem environments | Identity management for web-based apps         | 
| Management | You manage it (within your infrastructure) | Microsoft manages it (as a PaaS)               |
| Federation | Included via AD FS                         | Included within Entra ID itself                |
| Structure  | OUs and GPOs                               | Flat                                           |
| Protocols  | Kerberos                                   | SAML, WS-Federation, OpenID Connect, and OAuth | 

## Definitions
Entra ID uses the definitions below. 

**Identity**  
An identity is the representation of a person or program.

**Account**  
An account is an identity with data associated to it. A Microsoft Entra Account is an account created via Microsoft Entra ID or Microsoft 365.

**Tenant**  
A tenant is a directory of accounts and an instance of Entra ID. Subscriptions can only use one tenant at a time.

## Editions
There are four editions of Entra ID. 

**Free** (included with an Azure subscription)  
* User/group management
* On-prem directory synchronization
* SSO

**Microsoft 365 Apps** (included with Microsoft 365)  
* User/group management
* On-prem directory synchronization
* SSO
* Identity management for Microsoft 365 apps
* Group access management
* Branding
* MFA
* Password self-service

**Premium P1**  
* User/group management
* On-prem directory synchronization
* SSO
* Microsoft Identity manager
* Dynamic groups
* Hybrid users can access on-prem and cloud resources
* Password self-service for on-prem users

**Premium P2**  
* User/group management
* On-prem directory synchronization
* SSO
* Microsoft Identity manager
* Dynamic groups
* Hybrid users can access on-prem and cloud resources
* Password self-service for on-prem users
* Entra ID Protection (Conditional Access)
* Privileged Identity Management (e.g., discover, restrict, and monitor admin access)

## Entra Connect  
Entra Connect is used for syncing directory information between Active Directory and Entra ID.

## Conditional Access
Conditional Access is the [zero trust](/security/models/zero-trust/README.md) [policy engine](/security/models/zero-trust/README.md) used across multiple Entra services. Conditional Access uses *identity signals* to allow or deny access to a resource. 

**Identity Signal**  
An identity signal represents the entity requesting access. It includes the properties listed below. 
* Their identity (i.e., who they claim to be)
* Their location
* Their client (i.e., their device)