# Physical Infrastructure
Azure's physical infrastructure is represented by data centers, regions, and availability zones. 

## Data Centers
A data center is a building with racks of computing resources and dedicated energy, cooling, and networking. 

**Azure Data Centers**  
An Azure data center is a data center used to facilitate the Azure cloud. 

## Regions  
A region is an area that contains one or more Azure data centers. 

**Region Pairs**  
A region pair is two regions connected within the same geographical area, but at least 300 miles apart. Some services require you to manually configure replication, failover, and failback settings within a region pair while others do it automatically. 

*One-Direction Region Pairing*  
One-direction region pairing is when the primary region relies on the secondary region while the secondary region is independent of the primary. If the primary fails, the secondary assumes responsibility of the primary. If the secondary fails, the primary does not step-in. 

**Sovereign Regions**   
A sovereign region is a region that is physically and logically isolated from the main instance of Azure. Data centers within a sovereign region are not maintained by Micrsoft. Sovereign regions are used for compliance and legal reasons. 

## Availability Zones  
An availability zone is one more Azure data centers within a region that are connected. Not all regions can support availability zones. Availability zones are mainly used to provide [high availability](/cloud/concepts/README.md#cloud-benefits) for virtual machines, managed disks, SQL databases, and load balancers. Some Azure services take advantage of the redundancy provided by an availability zone and are organized into one of the categories listed below.

**Zonal Service**  
A Zonal Service is a service that allows you to pin a resource to an availability zone. 

**Zone-Redundant Service**  
A Zone-Redundant Service is a service that replicates a given resource across availability zones. 

**Non-Regional Service**  
A Non-Regional Service is a service that is [resilient](/cloud/concepts/README.md#cloud-benefits) to zone and region-wide outages. 

![availability-zones.png](/azure/architecture/physical-infrastructure/availability-zones.png)


 

