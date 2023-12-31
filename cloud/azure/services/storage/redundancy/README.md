# Azure Storage Redundancy
There are four options for achieving data redundancy in Azure. 

## Primary Regions
There is always three copies of your data in your storage account's primary region. Yet, data is replicated using either *Locally Redundant Storage (LRS)* or *Zone Redundant Storage (ZRS)*.

### Locally Redundant Storage  
LRS replicates your data within in the same data center (e.g., all three copies are in the same building). 

### Zone-Redundant Storage 
ZRS replicates your data between three separate availability zones (e.g., one copy per zone). By definition, ZRS provides *high-availability*. 

## Secondary Regions
Using an secondary region to store another copy of your data provides *high durability*. Data between primary and secondary regions is replicated using either *Geo-Redundant Storage (GRS)* or *Geo-Zone-Redundant Storage (GZRS)*.

### Geo-Redundant Storage  
GRS copies your data using LRS and then asynchronously replicates it to another data center in a different region (e.g., three copies within building 1 of region A and three copies within building 1 of region B). 

### Geo-Zone-Redundant Storage 
GZRS replicates your data using ZRS and then asynchronously replicates it to another data center in a different region (e.g., one copy per zone in region A and three copies within building 1 of region B). 