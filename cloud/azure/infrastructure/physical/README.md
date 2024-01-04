# Physical Infrastructure
Azure's physical infrastructure is represented by regions, availability zones, and data centers. 
* [Regions](#regions)
* [Availability Zones](#availability-zones)
* [Data Centers](#data-centers)

![availability-zones.png](availability-zones.png)

## Regions  
A region is an area that contains one or more Azure data centers. 

### Region Pairs  
A region pair is two regions connected within the same geographical area, but at least 300 miles apart. Some services require you to manually configure replication, failover, and failback settings within a region pair while others do it automatically. 

**One-Direction Region Pairing**  
One-direction region pairing is when the primary region relies on the secondary region while the secondary region is independent of the primary. If the primary fails, the secondary assumes responsibility of the primary. If the secondary fails, the primary does not step-in. 

### Sovereign Regions   
A sovereign region is a region that is physically and logically isolated from the main instance of Azure. Data centers within a sovereign region are not maintained by Micrsoft. Sovereign regions are used for compliance and legal reasons. 

## Availability Zones  
An availability zone is one more Azure data centers within a region that are connected. Not all regions can support availability zones. Availability zones are used to provide [high availability](/cloud/concepts/README.md#cloud-benefits) for virtual machines, managed disks, SQL databases, and load balancers. Some Azure services take advantage of the redundancy provided by an availability zone and are organized into one of the categories listed below.

### Zonal Service  
Zonal Services pin resources to an availability zone. 

### Zone-Redundant Service  
A Zone-Redundant Service replicates a given resource across availability zones. 

### Non-Regional Service  
A Non-Regional Service is [resilient](/cloud/concepts/README.md#cloud-benefits) to region and zone-wide outages. 

## Data Centers
A data center is a building with racks of computing resources and dedicated energy, cooling, and networking. 