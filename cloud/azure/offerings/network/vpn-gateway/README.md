# Azure VPN Gateway
Azure VPN Gateway is an [IaaS](/cloud/concepts/README.md#cloud-service-models) offering used to enable communication between on-prem resources and Azure. 

## Virtual Private Network
A Virtual Private Network (VPN) is two or more encrypted connections between trusted locations across an untrusted location (e.g., the Internet). There are two types of VPNs: point-to-site and site-to-site.

**Point-to-Site VPN**  
A point-to-site VPN exists when external machines to connect to an virtual network (e.g., work-from-home situations). 

**Site-to-Site VPN**  
A site-to-site VPN exists when on-prem networks to connect to a virtual network (the Azure cloud will appear as local).

## Virtual Private Network Gateways 
A VPN gateway is a resource that faciliates a VPN. VPN gateways are provided via the Azure VPN Gateway service. One benefit of using the Azure VPN Gateway service is redundancy. 

**Redundancy**
When one VPN gateway is created, another is put on standby in Azure. Also, ExpressRoute connections can be configured to failover to VPN gateways. 

## Virtual Private Network Gateway Types
There are two types of VPN gateways: policy-based and route-based. 

**Policy-Based VPN Gateways**  
Policy-based VPN gateways use a pre-define list of IP addresses to determine which packets to encrypt, reencapsulate, and transmit. For example, any traffic from the sales department's network is routed onto VPN "A." If the sale's department's network address scheme changes, you will have to reconfigure the VPN gateway.

**Route-Based VPN Gateways**  
Route-based VPN gateways use dedicated network interfaces to determine which packets to encrypt, reencapsulate, and transmit. For example, anything sent to network interface "A" is routed onto VPN "A." 

## Virtual Private Network Gateway Modes
There are two VPN gateways modes: active/standby and active/active.

**Active/Standby Mode**  
Active/standby mode is when one VPN gateway assumes responsibility of the VPN when the other gateway goes offline. VPN gateways are in active/standby mode by default. 

**Active/Active Mode**  
Active/active mode is when both VPN gateways are in operation. Although, you have to create separate on-prem tunnels to both. 