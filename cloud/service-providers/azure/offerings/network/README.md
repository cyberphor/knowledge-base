# Azure Network Services
* [Azure Virtual Networks](#virtual-networks)
* [Azure Subnets](#azure-subnets)
* [Azure Network Security Groups](#azure-network-security-groups)
* [Azure Network Interfaces](#azure-network-interfaces)
* [Azure Private Links](#azure-private-links)
* [Azure DNS](#azure-dns)
* [Azure Load Balancers](#azure-load-balancers)
* [Azure Traffic Manager](#azure-traffic-manager)
* [Azure VPN Gateway](vpn-gateway/README.md)
* [Azure ExpressRoute](expressroute/README.md)

## Azure Virtual Networks
Azure Virtual Networks (VNets) allows resources to communicate with each other and/or the Internet. They are used to create private clouds, hybrid clouds, and Virtual Private Networks (VPNs). Once you create a VNet, you can't change it's IP address scheme. 

### Peering  
Peering is when two VNets, regardless of their region, are connected to each other. Peering traffic is private and transmitted over the Azure backbone. 

## Azure Subnets
Azure Subnets are segments of a VNet. They have unique IP address ranges. 

### Reserved IP Addresses  
Azure uses five IP addresses in every subnet. 
* Network ID
* Default gateway (e.g., first usable IP address)
* DNS servers (e.g., the second and third usable IP addresses)
* Broadcast address (e.g., the last IP address within the subnet)

## Azure Network Security Groups  
Azure Network Security Groups (NSGs) filter traffic. By default, Azure routes traffic between all subnets in a VNet. 

## Azure Network Interfaces 
Azure network interfaces allow resources to communicate on a VNet. 

### Private Endpoints  
A private endpoint is a network interface with a private IP address. 

### Service Endppoints  
A service endpoint allows resources to connect to Azure services as if they're within the same virtual network. They're similar to VPNs. 

### Public Endpoints
A public endpoint is a network interface with a public IP address.

## Azure Private Links  
Azure Private Links allow you to make connections between Azure services using the Azure backbone instead of the public Internet. 

## Azure DNS
Azure DNS allows you to use and manage Domain Name System (DNS) records. It's not used for purchasing domain names. DNS records hosted in Azure can be managed using the Azure portal, Azure CLI, and PowerShell. DNS records hosted in Azure can be protected using Azure's Role-Based Access Control features. 

## Azure Load Balancers  
Azure Load balancers are used to distribute traffic. 

## Azure Traffic Manager
Azure Traffic Manager is a load balancing service. It distributes traffic from across the Internet to the deployment groups closest to the user. The Azure Traffic Manager also provides health monitoring. 
 