# Azure Network Services
Azure's offerings include the network services below. 
* [Virtual Networking](#virtual-networking)
* [Segmentation](#segmentation)
* [Communication Between Cloud Resources](#communication-between-cloud-resources)
* [Communication With the Internet](#communication-with-the-internet)
* [Communication With On-Prem Resources](#communication-with-on-prem-resources)
  * [Azure VPN Gateway](/azure/services/network/vpn-gateway/README.md)
  * [Azure ExpressRoute](/azure/services/network/expressroute/README.md)
* [Traffic Filtering](#traffic-filtering)
* [Domain Name Resolution](#domain-name-resolution)

## Virtual Networking
**Virtual Network**  
A virtual network allows resources to communicate with each other and/or the Internet. 

**Endpoints**  
An endpoint is a virtual network interface. Endpoints give resources the ability to communicate on a virtual network. 

**Peering**  
Peering is when two virtual networks connect directly to each other (even if they are in separate regions). Peering traffic is transmitted over the Azure backbone and private. 

**User-Defined Routes**  
User-Defined Routes (UDR) are used to control routing tables. 

## Segmentation
**Virtual Subnets**  
A virtual subnet is a segment of a virtual network.

## Communication Between Cloud Resources 
**Private Endpoints**  
A private endpoint is a virtual network interface with a private IP address. 

**Service Endppoint**  
A service endpoint allows resources to connect to Azure services as they are within the same virtual network. They are similar to Virtual Private Network (VPN) technology. 

## Communication With the Internet
**Public Endpoints**  
A public endpoint is a virtual network interface with a public IP address. 

**Load Balancers**  
Load balancers are used to distribute traffic from the Internet to a resource. 

## Communication with On-Prem Resources
Communication with on-prem resources is provided through the two [IaaS](/cloud/concepts/README.md#cloud-service-models) offerings below.
* [Azure VPN Gateway](/azure/services/network/vpn-gateway/README.md)
* [Azure ExpressRoute](/azure/services/expressroute/README.md)

## Traffic Filtering
Traffic filtering is provided through Network Security Groups (NSG). 

**Network Security Groups**  
A NSG is a virtual firewall. It uses rules to approve or deny network communication.  

## Domain Name Resolution
Azure DNS allows you to use and manage Domain Name System (DNS) records. Azure DNS is not used for purchasing domain names. 
* DNS records hosted in Azure can be managed using the Azure portal, Azure CLI, and PowerShell
* DNS records hosted in Azure can be protected using Azure's Role-Based Access Control features