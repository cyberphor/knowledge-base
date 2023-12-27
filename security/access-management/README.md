# Access Management

## Identity
**Entity**  
An entity is a person or program (aka "subject").

**Identity**  
An identity is the representation of a entity. It's a unique attribute like a name, number, or address. 

**Account**  
An account is an identity with data associated to it. 

## Authentication
**Credential Management**  
* Passwords
* Keys: your private and public key 
* Certificates: the certificates that were generated with your key pair
* Secrets: sensitive information stored in environment variables (e.g., API token)

### Public Key Infrastructure 
Public Key Infrastructure (PKI) is a system for creating, storing, distributing, and using private keys and *digital certificates* for authentication. 

**Digital Certificates**  
A digital certificate is a file that contains a user's public key and digital signature created by a Certificate Authority (CA). 
* The digital signature is proof the digital certificate can be trusted
* The digital signature was created using the CA's private key (i.e., it can be decrypted and verified using the CA's public key)
* If you trust the CA, you trust who they vet (e.g., if you trust DigiCert, you trust the digital certificate they signed for GitHub)

**Certificate Authority**  
A Certificate Authority (CA) creates, stores, and distributes certificates. There's three types of CAs.  
* Root CA: a root CA's certificate is a file they digitally signed with their own private key
* Intermediate CA: issues certificates to other CAs only
* Subordinate CA: issues certificates to users

**Registration Authority**  
A Registration Authority processes certificate requests. If you're approved, your request is forwarded to and fulfilled by the CA within your PKI system.  

**Authentication Schemes**  
* Single-Factor Authentication 
* Multi-Factor Authentication

**Single Sign-On**  
Single Sign-On is an authentication process where you only need to authenticate once before accessing multiple applications. Specifically, multiple applications (aka "Service Providers") use the same authentication server (aka "Identity Provider").  

*Security Assertion Markup Language (SAML)*  
SAML is a protocol used to facilitate SSO. It's written in XML and transmitted via HTTP. In practice, Service Providers exchange SAML data with an Identity Provider to provide a SSO experience. 

**Federation**  
Federation is when an external entity is granted access to your resources. 

## Authorization
**Authorization**  
Authorization is what an entity is allowed to do to an object. 

**Permissions**  
Permissions represent what you're allowed to do with an object. 

### Authorization Schemes
**Discretionary Access Control**  
Discretionary Access Control (DAC) is when access is evaluated using Access Control Lists. 

**Mandatory Access Control**  
Mandatory Access Control (MAC) is when access is evaluated using labels and account classifications. A subject must possess the right classification to access an object with a specific label. 

**Role-Based Access Control**  
Role-Based Access Control (RBAC) is when access is evaluated by the subject's role. RBAC uses roles to represent and manage authorization. For example, a user will only be authorized to modify a resource if were assigned a "Editor" role (i.e., their account was added to the "Editors" group).

