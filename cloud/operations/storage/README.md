# Storage
* [Cloud Storage Features](#cloud-storage-features)
* [Cloud Storage Tiers](#cloud-storage-tiers)
* [Software-Define Storage](#software-define-storage)
* [Content Delivery Network](#content-delivery-network)

## Cloud Storage Features
The features described below are baked into cloud storage services. 

**Data Compression**  
Data compression is when data is encoded in a way that requires less storage capacity and network bandwidth. 

**Data Deduplication**  
Data deduplication is an automated process for ensuring only one copy of data is stored. 

**Data Replication**  
* Asynchronous replication: the server with backup data is only up to date as long as primary is sending updates (if it fails before sending an update, the update is lost)
* Synchronous replication: the backup is not considered complete until both servers have the last update

**Data Encryption**  
CSPs encrypt storage using encryption algorithm like Advanced Encryption Standard (AES).

**Thick Provisioning**  
Thick storage provisioning is when you pay for all the storage allocated. 

**Thin Storage Provisioning**  
Thin storage provisioning is when you only pay for the storage you use. 

## Cloud Storage Tiers
The cost and speed of accessing data in the cloud is based on the performance of the network and media used. 

**Hot Storage Tier**  
Hot storage is data that is frequently accessed (e.g., databases). They are expensive because of their high storage network and media performance. 
* IOPS (Input/Output Per Second): how many times data can be read/written in one second

**Cold Storage Tier**  
Cold storage is for data that is infrequently accessed (e.g., backups). They are cheaper because of their low storage network and media performance. 
* Throughput: the size of data transferred

**Archive Storage Tier**  
The archive storage tier is for data that is rarely accessed. 

## Software-Define Storage
Software-Defined Storage (SDS) is a storage architecture. SDS is when hardware differences between storage media are abstracted and presented as a single resource pool. SDS uses policies (e.g., quotas) and automation scale capacity and manage cost.

**Quotas**  
A quota represents how much data can be stored. 
* Soft Quota: not enforced
* Hard Quota: enforced

## Content Delivery Network
Content Delivery Networks (CDNs) are used by content providers to store data in different regions and serve content to customers using the closest data center. 
