# Azure Storage
Azure's [IaaS](/cloud/concepts/README.md#cloud-service-models) offerings include the [storage-related](/storage/README.md) services, options, and tools listed below. 

**Services**  
Storage Services
* [Azure Blobs](/azure/services/storage/blobs/README.md)
* [Azure Disks](/azure/services/storage/disks/README.md)
* [Azure Files](/azure/services/storage/files/README.md)
* [Azure Queues](/azure/services/storage/queues/README.md)
* [Azure Tables](/azure/services/storage/tables/README.md)

Migration Services
* [Azure Data Box](/azure/services/storage/data-box/README.md)
* [Azure Migrate](/azure/services/storage/migrate/README.md)

**Options**
* [Storage Accounts](/azure/services/storage/accounts/README.md)
* [Storage Access Options](#access-options)
* [Storage Redundancy Options](#redundancy-options)

**Tools**  
* [AzCopy](#azcopy)
* [Azure Storage Explorer](#azure-storage-explorer)
* [Azure File Sync](#azure-file-sync)

## Access Options
There are four options for optimizing the way your data is stored in Azure. 

### Hot Access Tier
Data labeled with "hot access" is stored in a way to faciliate frequent and fast access (e.g., SSDs and load balancing). 

### Cool Access Tier  
Data labeled with "cool access" is stored for at least 30 days and optimized to faciliate infrequent and slow access (e.g., SSDs). 

### Cold Access Tier
Data labeled with "cold access" is stored for at least 90 days and optimized to faciliate infrequent and slow access (e.g., HDDs). 

### Archive Access Tier  
Data labeled with "archive access" is stored for at least 180 days and optimized to faciliate infrequent and slow access (e.g., stored offline). 


## Redundancy Options
There are four options for achieving data redundancy in Azure. 

### Primary Regions
There is always three copies of your data in your storage account's primary region. Yet, data is replicated using either *Locally Redundant Storage (LRS)* or *Zone Redundant Storage (ZRS)*.

**Locally Redundant Storage**  
LRS replicates your data within in the same data center (e.g., all three copies are in the same building). 

**Zone-Redundant Storage**  
ZRS replicates your data between three separate availability zones (e.g., one copy per zone). By definition, ZRS provides *high-availability*. 

### Secondary Regions
Using an secondary region to store another copy of your data provides *high durability*. Data between primary and secondary regions is replicated using either *Geo-Redundant Storage (GRS)* or *Geo-Zone-Redundant Storage (GZRS)*.

**Geo-Redundant Storage**  
GRS copies your data using LRS and then asynchronously replicates it to another data center in a different region (e.g., three copies within building 1 of region A and three copies within building 1 of region B). 

**Geo-Zone-Redundant Storage**  
GZRS replicates your data using ZRS and then asynchronously replicates it to another data center in a different region (e.g., one copy per zone in region A and three copies within building 1 of region B). 


## Tools
There are three tools for moving data in Azure. 

### AzCopy
AzCopy is a CLI-based program for copying blobs or files to and from a storage account. 

### Azure Storage Explorer
Azure Storage Explorer is a self-contained, GUI-based program for copying blobs or files to and from a storage account. 

### Azure File Sync
Azure File Sync is a tool used for syncing files between on-prem and Azure.  
