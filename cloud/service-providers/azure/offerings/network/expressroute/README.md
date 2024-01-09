# Azure ExpressRoute
Azure ExpressRoute is an [IaaS](/cloud/concepts/README.md#cloud-service-models) offering used to enable communication between on-prem resources and Azure. DNS queries, certificate revocation list checking, and Azure Content Delivery Network requests are still eventually sent over the public internet (i.e., you send traffic over an ExpressRoute connection, but it eventually finds its way onto the Internet because it required a public service). Azure ExpressRoute connections can be configured to failover to Azure VPN Gateways. 

**ExpressRoute**  
An ExpressRoute is a direct and physical connection from an on-prem network to Azure. 

## ExpressRoute Connection Options
There are four options for setting up ExpressRoute connection. 

**Point-to-Point**  
A point-to-point ExpressRoute connection is when your building is directly connected to an Azure data center.

**Co-Location at a Cloud Exchange**  
A cloud exchange ExpressRoute connection is when your building is physically co-located with your Internet Service Provider (ISP). The ISP is then used to connect to an Azure data center.

**Any-to-Any**  
An any-to-any ExpressRoute connection is when your Wide Area Network (WAN) connection is used to connect your organization to an Azure data center. 

**ExpressRoute Site**  
An ExpressRoute site connection is when your building is connected to an ExpressRoute site. The ExpressRoute site then provides connectivty to an Azure data center.