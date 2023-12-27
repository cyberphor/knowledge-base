# Authentication

## Credential Management  
* Passwords
* Keys: your private and public key 
* Certificates: the certificates that were generated with your key pair
* Secrets: sensitive information stored in environment variables (e.g., API token)

## Public Key Infrastructure 
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

## Single Sign-On  
Single Sign-On (SSO) when two or more *Service Providers* use the same *Identity Provider*. SSO reduces the number of times a user must authenticate while accessing multiple applications. 

## Federation  
Federation is when an external entity is granted access to internal resources. SSO is implemented to improve user experiences. Federation is implemented to foster collaboration between multiple organizations (i.e., Identity Providers). 

## Protocols
### NTLMv2
Text goes here.

### Kerberos
Text goes here.

### Security Assertion Markup Language
Service Providers and Identity Providers use Security Assertion Markup Language (SAML) to exchange authentication data. SAML is written in XML, delivered via HTTP, and used in SSO and federation systems. 

### OAuth

### OpenID

### WS-Federation