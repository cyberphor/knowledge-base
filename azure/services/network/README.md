# Azure Network Services
Azure's [IaaS](/cloud/concepts/README.md#cloud-service-models) offerings include the network services listed and described below. 
* [Virtual Networking](#virtual-networking)
* [Segmentation](#segmentation)
* [Communication Between Cloud Resources](#communication-between-cloud-resources)
* [Communication With the Internet](#communication-with-the-internet)
* [Communication With On-Prem Resources](#communication-with-on-prem-resources)
* [Traffic Filtering](#traffic-filtering)

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

**Private Endpoints**  
A private endpoint is a virtual network interface with a private IP address. 

## Communication Between Cloud Resources 
**Service Endppoint**  
A service endpoint allows resources to connect to Azure services as they are within the same virtual network. They are similar to Virtual Private Network (VPN) technology. 

## Communication With the Internet
**Public Endpoints**  
A public endpoint is a virtual network interface with a public IP address. 

**Load Balancers**  
Load balancers are used to distribute traffic from the Internet to a resource. 

## Communication with On-Prem Resources
Communication with on-prem resources is provided through Virtual Private Networks and Azure ExpressRoute. 

**Virtual Private Network**  
A Virtual Private Network (VPN) is an connect between two trusted locations across an untrusted location (e.g., the Internet). 

*Point-to-Site VPN*  
A point-to-site VPN allows external machines (i.e., machines not part of your on-prem network) to connect to an virtual network. 

*Site-to-Site VPN*  
A site-to-site VPN allows on-prem networks to connect to a virtual network. The result is the Azure cloud appears local. 

**ExpressRoute**  
An ExpressRoute is a direct and physical connection from an on-prem network to Azure. 

## Traffic Filtering
Traffic filtering is provided through Network Security Groups (NSG). 

**Network Security Groups**  
A NSG is a firewall. It uses rules to approve or deny network communication.  
