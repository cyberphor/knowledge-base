# Azure Storage Accounts
![azure-blobs.png](/cloud/azure/offerings/storage/services/blobs/azure-blobs.png)

Storage accounts are used to manage one or more Azure Storage services (e.g., Azure Blobs, Files, Queues, and Tables). They provide a namespace for organizing your data. They are not used to manage Azure SQL or Azure Cosmos DB resources. Storage account settings are categorized as advanced (protocol and tier), networking (public access), data protection (soft deletions and versioning), and encryption (Microsoft or customer managed keys). All storage account types use Storage Service Encryption. 
* [Storage Account Naming Conventions](#storage-account-naming-conventions)
* [Storage Account Types](#storage-account-types)
* [Storage Account URLs](#storage-account-urls)
* [Storage Account Replication Options](#storage-account-replication-options)
* [Storage Account Access Keys](#storage-account-access-keys)

## Storage Account Naming Conventions  
Storage account accounts must follow the naming convention described below. 
* Uniqueness: globally (because it's part of a URL)
* Length: 3 to 24 characters
* Character sets: lowercase and numbers only

## Storage Account Types
There's four types of storage account types: Standard, Premium File Share, Premium Block Blob, and Premium Page Blob. You cannot change your storage account type after it's created. You must create a new account if your requirements (e.g., speed or access frequency) change. 

| Hardware Used     | Type                | Use Cases                         | Redundancy Options  |
| ----------------- | ------------------- | --------------------------------- | ------------------- |
| Hard Disk Drive   | Standard            | Blobs, tables, queues, and tables | LRS, ZRS, GRS, GZRS |
| Solid State Drive | Premium File Shares | File shares only                  | LRS, ZRS            |
| Solid State Drive | Premium Block Blob  | Block and append blobs only       | LRS, ZRS            |
| Solid State Drive | Premium Page Blob   | Page blobs only                   | LRS                 |

### Standard Storage Accounts
Standard storage accounts are used for infrequently accessed data. Premium storage accounts are used for frequently accessed data.

### Premium File Share Storage Account
The Premium File Share storage account is meant for file shares. Use it if you need both SMB and NFS support.

### Premium Block Blob Storage Account
The Premium Block Blob storage account is meant for blobs and/or data lakes with high transaction rates. 

### Premium Page Blob Storage Account
The Premium Page Blob storage account is meant for index-based data structures like virtual machine disks. 

## Storage Account URLs
Storage accounts provide a unique namespace that can be accessed via HTTP or HTTPS. The URL is a combination of the storage account name and service used. The URI is the data object you want to access.  
```bash
# Blobs
https://cyberphor123456789.blob.core.windows.net/pictures/image01.png

# Files
https://cyberphor123456789.file.core.windows.net/reports/report01.pdf

# Queue
https://cyberphor123456789.queue.core.windows.net/requests/request01
```

### Custom Domain Names
Storage accounts can be configured to use custom domain names instead of the prefix described above using one of two options: Direct Mapping or Intermediary Mapping. 

**Direct Mapping**  
Direct mapping involves using a CNAME record (e.g., `cyberphor`). 
* Before: `https://cyberphor123456789.blob.core.windows.net/pictures/image01.png`
* After: `https://cyberphor.blob.core.windows.net/pictures/image01.png`

**Intermediary Mapping**  
Intermediary mapping is when you use a domain name that's already in use within Azure. It does require some downtime to apply the new mapping. 

## Storage Account Replication Options
Storage accounts can be replicated in and between primary and secondary regions. In a primary region, storage accounts are replicated using *Locally Redundant Storage (LRS)* or *Zone Redundant Storage (ZRS)*. Between primary and secondary regions, storage accounts are replicated using *Geo-Redundant Storage (GRS)* or *Geo-Zone-Redundant Storage (GZRS)*.
* High Availability: when data is replicated between three different zones 
* High Durability: when data is replicated between a primary and second region 

### Primary Regions
**Locally Redundant Storage**    
LRS replicates your storage account within in the same data center (e.g., one building with three copies). It's the cheapest option, but provides the least durability. 

**Zone Redundant Storage**   
ZRS replicates your storage account between within the same region (e.g., three zones with one copy each). ZRS is not available in every region. 

### Secondary Regions
**Geo-Redundant Storage**  
GRS copies your data using LRS and then asynchronously replicates it to another data center in a different region (e.g., three copies within building 1 of region A and three copies within building 1 of region B). 

**Geo-Zone-Redundant Storage**   
GZRS replicates your data using ZRS and then asynchronously replicates it to another data center in a different region (e.g., one copy per zone in region A and three copies within building 1 of region B).

*Read-Access GRS*  
By default, GRS is configured to make replicated data "read-only" when Microsoft initiates a failover. In Read-Access GRS, you can make replicated data "read-only" regardless if Microsoft initiated the failover or not.   

## Storage Account Access Keys
Every storage account comes with two 512-bit access keys. They are used to digitally sign Shared Keys and/or SAS tokens. If you're using the Azure CLI and `az storage blob` command, it's an argument for the `--account-key` parameter. 