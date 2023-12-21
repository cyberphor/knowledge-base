# Virtual Private Networks

## Types
### Site-to-Site VPN
A site-to-site VPN connects two trusted networks across an untrusted zone. They are normally used for intranets, private clouds, and/or hybrid clouds. 

### Point-to-Point VPN
A point-to-point VPN connects an authorized user to a trusted network across an untrusted zone. They are normally used to provide people remote access to a resource from home or abroad (versus their office). 

## IPSec  
IPSec is a suite of protocols used for establishing encrypted and authenticated connections. It can be used to create a site-to-site or point-to-point VPN connections. IPSec sites between the Network and Link Layers of the TCP/IP stack. 

![IPSec](/network/virtual-private-networks/IPSec.png)

### IPSec Components    
**IKE Daemon**  
A service for managing network connections.

**SA**  
An encrypted, but half-duplex connection.

**IPSec Driver**  
Processes packets sent or received over an SA. 

### IPSec Protocols
**ISAKMP**  
The protocol used to negotiate (security parameters) and maintain network connections

**ESP**  
* Transport Mode: encrypts the payload (e.g. TCP data) and provides authentication for the IP layer (use-case: VPN)
* Tunnel Mode: encrypts the payload (use-case: protecting point-to-point network connections)

**AH**  
* Transport Mode: provides authentication for the IP layer
* Tunnel Model: provides authentication for both the original and new IP header