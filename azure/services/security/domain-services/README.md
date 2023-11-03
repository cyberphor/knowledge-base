# Domain Services

**Domain**  
A domain is group of machines that share the same directory information and security policy.

**Domain Services**  
Domain services are used for domain management. Below is a list of domain services.
* Establishing a policy 
* Joining a machine to the domain
* Authenticating an account (via the NTLM and/or Kerberos protocol)
* Removing a machine from the domain

## Active Directory Domain Services
Active Directory Domain Services (ADDS) is used for managing domains on-prem. ADDS is hosted on one or more Domain Controllers. 

## Entra Domain Services  
Entra Domain Services is used for managing domains on-prem and in Azure. It eliminates the need to run your own Domain Controllers. 

### Authentication Methods
**Single Sign-On**  
Text goes here.

**Multi-Factor Authentication**  
Text goes here.

**Passwordless**  
Text goes here.

*Windows Hello for Business*  
Text goes here.

*Microsoft Authenticator App*  
Text goes here.

*FIDO2 Security Keys*  
Text goes here.

**Entra External ID**  
Entra External ID is a service used to authenticate and collaborate external entities (i.e., people who use a different directory service, but have been authorized to access resources within your domain). 

*Business-to-Business Collaboration*  
Business-to-Business collaboration is when external entities are authenticated using their preferred directory service (e.g., Google, Facebook, or Apple) before access to Azure resources is granted.

*Business-to-Business Direct Connect Collaboration*  
Business-to-Business Direct Connect collaboration is when external entities are authenticated using their Entra ID directory services before access to Azure resources is granted.

*Business-to-Customer Collaboration*   
Business-to-Customer collaboration is when external entities are authenticated using Entra ID before access to an third-party app is granted.