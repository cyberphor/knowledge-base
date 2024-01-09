# Azure Load Balancers  
Azure Load balancers are used to distribute traffic in Azure. 

![load-balancer.png](load-balancer.png)

## Load Balancer Components
Load balancers are made of four components: front-end IP configuration, back-end pools, health probes, and load balancing rules. 

### Front-IP Configurations
The front-IP configuration defines the load balancer's public or private IP address. 

### Back-End Pools
The back-end pool represents the group of virtual machines you're load balancing. They must all be in same VNet. It consists of the IP addresses of network interfaces connected to your load balancer. 

### Health Probes
The status of a back-end pool is monitored using health probes. If a health probe fails, the load balancer will stop sending traffic to it. A health probe includes the following settings: name, URI, protocol, port, interval in seconds, and threshold (i.e., how many failed probes the load balancer will tolerate). Another probe method is using an agent. 

**Successful Probes**  
A successful HTTP probe is when an HTTP code 200 is returned. A successful TCP probe is when a TCP connection is established. 

### Load Balancing Rules
Load balancing rules are used to control how traffic is distributed across your back-end pool. By default, traffic is distributed using a "five-tuple hash" (i.e., source port, source IP address, protocol, destination IP address, and destination port). Each rule maps a front-end socket to a back-end socket. A load balancing rule includes the following settings: IP version, front-end socket, back-end socket, health probe, and session persistence. 

**Session Persistence**  
Session persistence represents how to handle traffic from a client between requests (aka "affinity"). You can configure a load balancer to send requests from a client to the same virtual machine. Client identification can be done by IP address or IP address and protocol. For example, if a client sends traffic from via HTTP and TCP each request will be handled by a different virtual machine. Session persistence is important for applications that need to maintain state (e.g., e-commerce). 

## Load Balancer SKUs
There's three load balancer SKUs: Basic, Standard, and Gateway. 

### Basic SKU
The Basic SKU only supports inbound TCP or HTTP traffic. Load balancers with this SKU are open by default, but can be controlled using NSGs. The Basic SKU supports up to 300 back-end pools. Each back-end pool can use virtual machines from one availability set or one scale set. 

### Standard SKU
The Standard SKU supports inbound and outbound TCP, HTTP, and HTTPS traffic. Load balancers with this SKU are closed by default unless inbound traffic is allowed by a NSG or from the internal VNet. The Standard SKU supports up to 1,000 back-end pools. Each back-end pool can use virtual machines from a combination of availability sets and scale sets. 