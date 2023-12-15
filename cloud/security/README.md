# Cloud Security
* [Access Management](#access-management)
* [Network Security](#network-security)
* [System Security](#system-security)
* [Data Security](#data-security)
* [Vulnerability Management](#vulnerability-management)
* [Incident Handling](#incident-handling)

## Access Management
### Identity
**Entity**  
An entity is a person or program (aka "subject").

**Identity**  
An identity is the representation of a entity. It's a unique attribute like a name, number, or address. 

**Account**  
An account is an identity with data associated to it. 

### Authentication
**Credential Management**  
* Passwords
* Keys

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
SAML is a protocol used to faciliate SSO. It's written in XML and transmitted via HTTP. In practice, Service Providers exchange SAML data with an Identity Provider to provide a SSO experience. 

**Federation**  
Federation is when an external entity is granted access to your resources. 

### Authorization
**Authorization**  
Authorization is what an entity is allowed to do to an object. 

**Permissions**  
Permissions represent what you're allowed to do with an object. 

**Authorization Schemes**  
* Discretionary Access Control (DAC): access is evaluated by the object owner
* Mandatory Access Control (MAC): access is evaluated by the system owner
* Role-Based Access Control (RBAC): access is evaluated by the subject's role

## Network Security
### Protocols
**Transport Layer Security**  
Transport Layer Security

**HyperText Transfer Protocol Secure**  
HyperText Transfer Protocol Secure (HTTPS) is HTTP transmitted via TLS. 

**Domain Name Service**  
Text goes here. 

**Lightweight Directory Access Protocol**  
Text goes here. 

**Network Time Protocol**  
Text goes here. 

**IPSec**  
Text goes here. 

**Secure Shell**  
Text goes here. 

**Layer 2 Tunneling Protocol**  
Text goes here. 

**Point-to-Point Tunneling Protocol**  
Text goes here. 

**Generic Routing Encapsulation**  
Text goes here. 

### Security Devices
**Firewalls**  
Text goes here. 
* Stateful firewalls
* Stateless firewalls
* Ingress filtering
* Egress filtering

**Proxy Servers**  
Text goes here. 

**Web Application Firewall**  
Text goes here. 

**Intrusion Detection System**  
Text goes here. 

**Intrusion Prevention System**  
Text goes here. 

**Data Loss Prevention**  
Text goes here. 

**Network Access Control**  
Text goes here. 

**Packet Broker**  
Text goes here. 

### Network Segmentation
**Virtual Local Area Network**  
Text goes here. 

**Micro-Segmentation**  
Text goes here. 

**Tiering**  
Text goes here. 

**Security Incident & Event Management Servers**  
Text goes here. 
* Event monitoring
* Network flow

## System Security
**Hardening**  
* Disabling default accounts (reduce the probability of the attacker using the right identity)
* Disabling unnecessary services (e.g., the print spooler on your domain controller)
* Disabling unnecessary features (e.g., screen recording software)
* Disabling weak ciphers (to mitigate downgrade attacks)
* Configuring application whitelisting
* Installing anti-malware software (signature-based)
* Installing a host-based IDS (can be signature or behavior-based)
* Installing a host-based IPS (behavior-based and proactive) 
* Installing an Endpoint Detection and Response Agent (behavior-based and reactive)
* Installing a File Integrity Checker 

**Baselines**  
Text goes here. 
* Turning workstations into appliances
* https://www.stigviewer.com/stig/microsoft_windows_11/2022-06-24/MAC-1_Sensitive/

**Configuration Management**  
Text goes here. 

**Build Versions**  
* Stable
* Long-Term Support
* Beta
* Canary

## Data Security
**Cloud Access Security Broker**  
Text goes here. 

**Encryption**  
Text goes here. 

**Hashing**  
Text goes here. 

**Data Classification**  
Text goes here.

**Legal Hold**  
Text goes here. 

**Records Management**  
* Versioning
* Retention
* Destruction
* "Write Once, Read Many"

## Vulnerability Management
### Tools
**Port Scanner**  
Text goes here. 

**Vulnerability Scanner**  
Text goes here. 

### Assessments
**Credentialed Scans**  
Text goes here. 

**Network Scans**  
Text goes here. 

**Agent-based Scans**  
Text goes here. 

**Service Availabilities**  
Text goes here. 

### Security Patches
**Hot Fixes**  
Text goes here. 

**Scheduled Updates**  
Text goes here. 

**Signature Updates**  
Text goes here. 

### Security by Cloud Service Model
Text goes here. 

### Risk Register
Text goes here. 

## Incident Handling
### Preparation
**Roles**  
Text goes here. 

**Documentation**  
Text goes here. 

**Phone Roster**  
Text goes here. 

**Training**  
Text goes here. 

**Tabletops**  
Text goes here. 

**Incident Categories**  
Text goes here. 
* https://www.jcs.mil/Portals/36/Documents/Library/Manuals/m651001.pdf

### Incident Response 
**Identify**  
Text goes here. 

**Investigate**  
Text goes here. 

**Contain**  
Text goes here. 

**Eradicate**  
Text goes here.
* Root-Cause Analysis 

**Recover**  
Text goes here. 

**Lessons Learned**  
Text goes here. 