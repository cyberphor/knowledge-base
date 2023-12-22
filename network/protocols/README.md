# Protocols
* [Network Protocols](#network-protocols)
* [Directory Protocols](#directory-protocols)
* [Remote Administration Protocols](#remote-administration-protocols)
* [Tunneling Protocols](#tunneling-protocols)

## Network Protocols
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
Domain Name Service (DNS) is a protocol used to resolve IP addresses to domain names. DNS allows you to discover the address of public Internet resources.  
* DNS-over-HTTPS: uses HTTPS to encrypt traffic between DNS clients and servers
* DNS-over-TLS: uses TLS to encrypt traffic between DNS clients and servers
* DNSSEC: uses PKI for authenticating DNS servers

**Dynamic Host Configuration Protocol**  
Dynamic Host Configuration Protocol (DHCP) is used to dynamically assign IP addresses. It involves the four step-process describe below. 
1. Client sends a "DHCP Discover" broadcast
2. Server replies to the client with a "DHCP Offer" broadcast
3. Client replies to the server with a "DHCP Request" broadcast
4. Server replies to the client with a "DHCP Acknowledge" broadcast 

**Network Time Protocol**  
Network Time Protocol (NTP) is a protocol used to synchronize system clocks with atomic clocks. The lower the "stratum" the more accurate the time. Virtual machines get their timing from their physical host. 
* NTP clients can be configured to use PKI for authenticating NTP servers (aka "Network Time Security")

## Directory Protocols
**Lightweight Directory Access Protocol**  
Lightweight Directory Access Protocol (LDAP) is a protocol used to create, read, update, or delete identity-related information. For example, when you use PowerShell to create a domain account, LDAP is used. 

## Remote Administration Protocols
**Secure Shell**  
Secure Shell (SSH) is an protocol used for remote system administration and Virtual Private Networks (VPNs).

## Tunneling Protocols
**Point-to-Point Tunneling Protocol**  
Point-to-Point Tunneling Protocol (PPTP) is a protocol used for creating VPNs. It was developed by Microsoft and Cisco. It is now considered too vulnerable to be used in production. 

**Layer 2 Tunneling Protocol / IPSec**  
Layer 2 Tunneling Protocol (L2TP) / IPSec is a protocol used for creating VPNs. It L2TP is based on PPTP. L2TP relies on IPSec for encryption. 
* The data you want to protect is encapsulated in a Point-to-Point Protocol (PPP) frame
* The PPP frame is encapsulated in a L2TP frame
* The L2TP frame is encapsulated in a IPSec (e.g., ESP) packet
* The IPSec packet is encapsulated in a User Datagram Protocol (UDP) datagram
* The UDP datagram is sent to the destination and de-encapsulated accordingly

**Generic Routing Encapsulation**  
Generic Routing Encapsulation (GRE) is a protocol used for tunneling unsupported routing protocols. Like PPTP and L2TP, it relies on other protocols for encryption. 

