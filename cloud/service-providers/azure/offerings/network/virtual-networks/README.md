# Azure Virtual Networks
An Azure Virtual Network (VNet) is two or more virtual machines using the same IP address scheme. VNets allow resources (e.g., virtual machines, load balancers, gateways, and containers) to communicate with each other and/or the Internet. They're used in private clouds, hybrid clouds, and Virtual Private Networks (VPNs). Once you create a VNet, you can't change it's IP address scheme. Multiple VNets can be connected together using peering or an Azure VPN Gateway. 
* [Azure Network Interfaces](#azure-network-interfaces)
* [Routes](#routes)
* [Peering](#peering)
* [Hub-and-Spoke Networks](#hub-and-spoke-networks)
* [Network Virtual Appliances](#network-virtual-appliances)

## Azure Network Interfaces
An Azure network interface is a virtual Network Interface Card (NIC). Azure virtual machines need them to communicate with each other and/or the Internet. 

### Public IP Addresses
In Azure, public IP addresses are region specific and can be assigned to virtual machines, load balancers, VPN gateways, and application gateways. If you need a static range of IP addresses, create an "public IP address prefix." Azure offers two SKUs for public IP addresses: Basic and Standard.  

**Basic SKU**  
The Basic SKU supports static and dynamic IP addressing. Yet, it's allows inbound traffic by default and does not support zone redundancy. 

**Public SKU**  
The Standard SKU only uses static IP addressing. Yet, it denies inbound traffic by default and supports zone redundancy. 

## Azure Subnets
An Azure Subnet is a segment of a VNet with a unique IP address range (i.e., network ID, default gateway, and broadcast address). 

### IP Addresses Reserved by Azure
In every subnet, Azure uses five IP addresses. They're reserved for a network ID, default gateway, broadcast address, and two DNS servers. For example, consider the IP address range `192.168.0.0/24`. Azure would use `192.168.0.0` for the network ID, `192.168.0.1` for the gateway, `192.168.0.255` for the broadcast address, and `192.168.0.2` and `192.168.0.3` for DNS servers.

## Routes

### System Routes
Systems routes are used by Azure to control traffic between virtual machines, subnets, and the Internet. They are added to the VNet's routing table automatically. They include the list below. Traffic sent to "None" is dropped.

| Prefix         | Next Hop |
| -------------- | -------- |
| 0.0.0.0/0      | Internet |
| 10.0.0.0/8     | None     | 
| 172.16.0.0/12  | None     |
| 192.168.0.0/16 | None     |
| 100.64.0.0/10  | None     | 

![system-routes.png](system-routes.png)

### User-Defined Routes
User-Defined Routes (UDRs) are used to specify a virtual machine's next hop. The next hop can be a VNet, Network Virtual Appliance, or the Internet.  UDRs are free. 

![user-defined-routes.png](user-defined-routes.png)

## Peering
Peering is when you connect two VNets together. Peering traffic is sent over the Azure backbone and therefore private and fast. After VNets are peered, they're still managed as separate resources. There's two types of peering: Regional Peering and Global Peering. Your Azure account must have the "Network Contributor" role to peer VNets. When you peer two VNets, there are two connections between both of them. There should be one connection going from VNet "A" to VNet "B" and another going from VNet "B to VNet "A." The IP address ranges used for both VNets cannot overlap. When you peer VNets, they status is first "Initiated" and then "Connected." Peering is not established until both networks are in a "Connected" status. 

### Regional Peering  
Regional Peering is when two VNets from the same region are connected together. 

### Global Peering   
Global Peering is when two VNets from different regions are connected together. Global Peering is not supported in Azure Government Cloud. 

## Hub-and-Spoke Networks
A hub-and-spoke network is when multiple VNets are connected using Peering or Service Chaining. Service chaining is when UDRs are defined between VNets, Network Virtual Appliances (NVAs), and/or VPN Gateways. *Gateway Transit* is when VNets peer with a VPN Gateway to access other resources. 

### Using Peering to Create a Hub-and-Spoke Network  
![peering.png](peering.png)

### Using Service Chaining to Create a Hub-and-Spoke Network  
![service-chaining.png](service-chaining.png)

## Network Virtual Appliances
NVAs are used to control network traffic. They are firewalls, intrusion detection systems, proxies, and/or routers. You can create your own or use one listed in the Azure Marketplace. For example, you could deploy a subnet with UDRs and a Windows virtual machine configured with IP forwarding. 

![nva.png](nva.png)