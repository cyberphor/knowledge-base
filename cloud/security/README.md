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
Transport Layer Security (TLS) is a protocol used for establishing encrypted and authenticated connections. It involves the process described below. 
1. Client sends a connection request to a server
2. Server sends its digital certificate to the client
3. Client verifies the public key within the digital certificate
4. Client generates a random number 
5. Client uses the random number to generate a secret
6. Client encrypts the random number using the server's public key
7. Client sends the encrypted number to the server
8. Server decrypts the random number using its private key
9. Server uses the decrypted random number to generate the same secret 
10. Client and server independently uses the secret to generate a session key
11. Client uses session key to encrypt an HTTP request
12. Client sends an encrypted HTTP request to server

**HyperText Transfer Protocol Secure**  
HyperText Transfer Protocol Secure (HTTPS) is HTTP transmitted via TLS. HTTP is a protocol used to exchange hypertext data (i.e., text with links to other text).

**Domain Name Service**  
Domain Name Service (DNS) is a protocol used to resolve IP addresses to domain names. 

**Lightweight Directory Access Protocol**  
Lightweight Directory Access Protocol (LDAP) is a protocol used to create, read, update, or delete identity-related information. For example, when you use PowerShell to create a domain account, LDAP is used. 

**Network Time Protocol**  
Network Time Protocol (NTP) is a protocol used to synchronize system clocks with atomic clocks. The lower the "stratum" the more accurate the time.

**Secure Shell**  
Secure Shell (SSH) is an encrypted protocol used for remote system administration and Virtual Private Networking (VPN).

**IPSec**  
IPSec is a suite of protocols used for establishing encrypted and authenticated connections. It can be used to create a VPN or protect point-to-point network connections. 

*IPSec Components*  
* IKE daemon: a service for managing network connections
* SA: an encrypted, but half-duplex connection
* IPSec driver: processes packets sent or received over an SA

*IPSec Protocols*
* ISAKMP: the protocol used to negotiate (security parameters) and maintain network connections
* ESP:
  * Transport Mode: encrypts the payload (e.g. TCP data) and provides authentication for the IP layer (use-case: VPN)
  * Tunnel Mode: encrypts the payload (use-case: protecting point-to-point network connections)
* AH: 
  * Transport Mode: provides authentication for the IP layer
  * Tunnel Model: provides authentication for both the original and new IP header

**Point-to-Point Tunneling Protocol**  
Point-to-Point Tunneling Protocol (PPTP) is a protocol used for creating VPNs. It was developed by Microsoft and Cisco. It is now considered too vulnerable to be used in production. 

**Layer 2 Tunneling Protocol / IPSec**  
Layer 2 Tunneling Protocol (L2TP) / IPSec is a protocol used for creating VPNs. It L2TP is based on PPTP. L2TP relies on IPSec for encryption. 
* The data you want to protect is encapsulated in a Point-to-Point Protocol (PPP) frame
* The PPP frame is encapsulated in a L2TP frame
* The L2TP frame is encapsulated in a IPSec (e.g., ESP) packet
* The IPSec packet is encapsulated in a User Datagram Protocol (UDP) datagram
* The UDP datagram is sent to the destination and deencapsulated accordingly

**Generic Routing Encapsulation**  
Generic Routing Encapsulation (GRE) is a protocol used for tunneling unsupported routing protocols. Like PPTP and L2TP, it relies on other protocols for encryption. 

### Network Security Tools
**Firewalls**  
A firewall is used to filter connections between trusted and untrusted networks. 
* Stateless firewalls: filter by IP address and port
* Stateful firewalls: filter by IP address, port, and the state of a connection
* Web Application Firewalls (WAF): filter by application request (it's focused on protecting the server)

**Proxy Servers**  
A proxy server is used to filter and cache application requests. It's like a WAF accept it's focused on protecting the client. 

**Intrusion Detection System**  
An Intrusion Detection System (IDS) is used to detect anomalous activity. It relies on rules for generating alerts.

**Intrusion Prevention System**  
An Intrusion Prevention System (IPS) is used to detect and prevent anomalous activity. 

**Data Loss Prevention**  
Data Loss Prevention (DLP) is the process of preventing data from being lost or stolen. It includes the activities listed below. 
* Backups
* Blocking unauthorized file operations (e.g., copy, edit, or delete)
* Blocking screenshots
* Blocking removable media 
* Blocking unauthorized print jobs

**Network Access Control**  
Network Access Control (NAC) is when a client (aka "supplicant") is evaluated by a security check point (aka "authenticator") before *local* area network access is granted. It's similar to port security, but requires less touch-labor when there's a mistake. 
* The authenticator is a Layer 2 device (e.g., switch or wireless access point)
* NAC components use Extensible Authentication Protocol (EAP) frames to exchange data relating to the security check

**Packet Broker**  
A packet broker is software used to collect packets. They are used for analysis other network security tools. 

**Security Incident & Event Management Servers**  
A Security Incident & Event Management (SIEM) server is used to collect and correlate security-related data. Organizations use it for detecting and analyzing incidents. Examples of security-related data is listed below. 
* Alerts
* Transactions logs (e.g., HTTP, DNS, or LDAP)
* Netflow
* Packets

### Network Segmentation
**Virtual Local Area Network**  
Text goes here. 

**Micro-Segmentation**  
Text goes here. 

**Tiering**  
Text goes here. 

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