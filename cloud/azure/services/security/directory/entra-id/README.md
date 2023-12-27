# Entra ID
Entra ID is a directory and identity management service for on-prem, Microsoft 365, and Azure-based resources. It's queried using a REST API via HTTPS, not LDAP. 

## Entra ID Concepts
Entra ID uses the concepts described below. 

**Identity**  
An identity is the representation of a person, program, or machine.

**Account**  
An account is an identity with data associated to it. A Microsoft Entra Account is an account created via Microsoft Entra ID or Microsoft 365.

**Tenant**  
A tenant, aka "directory," contains the identity and authorization information of people, programs, and machines within an organization. A tenant is considered an instance of Entra ID.

**Subscription**  
A subscription is a organizational unit used to manage billing. Subscriptions can only use one tenant at a time. 

## Features
Entra ID includes the user-friendly and security features listed below. 
* Cross-Platform: supports Windows, iOS, macOS, and Android devices
* Passwordless authentication: Windows Hello
* Multi-Factor Authentication (MFA) 
* Single Sign-On (SSO) for on-prem (e.g., devices registered via Entra Join) and Azure-based resources
* Role-Based Access Control (RBAC)
* Self-Service Password Reset (SSPR) 
* Entra ID Protection (Conditional Access)
* Privileged Identity Management (e.g., discover, restrict, and monitor admin access)

### Entra Join
Entra Join is a feature used to add devices to a tenant with the help of on-prem Active Directory infrastructure. Adding a device to a tenant provides the benefits listed below. 
* SSO access to on-prem and Azure-based resources (when a Domain Controller is within Line-of-Sight of a device)
* Roaming: sync user and app settings between logons
* Passwordless authentication: Windows Hello

**Registering a Device**  
Registering a device provides SSO benefits. 

**Joining a Device**  
Joining a device provides SSO benefits and enforce machine configuration requirements (e.g., via Microsoft Intune). Joining a device also allows people to use a work account instead of a personal account. 

### Self-Service Password Reset
Self-Service Password Reset (SSPR) allows users to reset their password on their own. 

**SSPR Requirements**  
* Every account that requires the SSPR feature must have a license
* Every account that requires the SSPR feature must be given Global Administrator privileges 
* SSPR privileges are managed using security groups

**Enabling SSPR**  
Require MFA for accounts allowed to use the SSPR feature. 
* Your tenant
  * Manage > Properties > "Self-service password reset enabled"
    * None
    * Selected: specific groups can use SSPR
    * All: all accounts can use SSPR

## Entra ID Editions
All Entra ID editions support the features listed below.
* Identity and authorization management
* SSO
* Business-to-Business Collaboration

### Free Edition
The Free Edition is included with an Azure subscription and supports the features listed below.
* Directory Object Limit: 500k

### Microsoft 365 Apps
The Microsoft 365 Apps Edition is included with Microsoft 365 and supports the features listed below. 
* Directory Object Limit: unlimited
* Identity management for Microsoft 365 apps
* MFA
* SSPR
* Branding

### Premium P1  
The Premium P1 Edition supports the features listed below.
* All Premium Microsoft 365 edition features
* SSPR for on-prem users
* Dynamic groups
* Hybrid users can access on-prem and cloud resources

### Premium P2  
The Premium P2 Edition supports the features listed below.
* All Premium P1 edition features
* Entra ID Protection (Conditional Access)
* Privileged Identity Management (e.g., discover, restrict, and monitor admin access)