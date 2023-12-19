# Network

## Protocols
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
* The UDP datagram is sent to the destination and de-encapsulated accordingly

**Generic Routing Encapsulation**  
Generic Routing Encapsulation (GRE) is a protocol used for tunneling unsupported routing protocols. Like PPTP and L2TP, it relies on other protocols for encryption. 
