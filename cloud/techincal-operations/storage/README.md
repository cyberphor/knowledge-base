# Storage
Cloud administration depends on the storage concepts described below. 

## Cloud Storage Types
**File**  
File-based storage solutions organize data using file systems (e.g., NTFS and UFS). They are used in client operating sytems and are *difficult to expand*. 

**Object**  
Object-based storage solutions organize data using *metadata tags* instead of file systems. They are used for unstructured data like images, Microsoft Office documents, and binary files. CSPs offer more object-based solutions because they are *cheaper*.

**Block**  
Block-based storage solutions organize data into blocks that can be *divided*, distributed (i.e., stored across multiple storage devices until needed), and reassembled. They are used in Storage Area Networks (SANs), very efficent at handling large data sets, and very *expensive*. 

## Cloud Storage Characteristics
The cost and speed of accessing data in the cloud is based on *storage network and media performance*. 

**Hot Storage Solutions**  
Hot storage solutions are used for data that is accessed often (e.g., databases). They are expensive because of their high storage network and media performance. 

**Cold Storage Solutions**  
Cold storage solutions are used for data that is access occasionally (e.g., backups). They are cheaper because of their low storage network and media performance. 

## Cloud Storage Features
The features described below are baked into cloud storage services. 

**Data Compression**  
Data compression is when data is encoded in a way that requires less storage capacity and network bandwith. 

**Data Deduplication**  
Data deduplication is an automated process for ensuring only one copy of data is stored. 

**Data Encryption**  
CSPs encrypt storage using encryption algorithm like Advanced Encryption Standard (AES).

**Resource Elasticity**  
Cloud storage resources are elastic and can be scaled to meet demand. 

## Software-Define Storage
Software-Defined Storage (SDS) uses policies and automation to scale capacity and manage cost. SDS solutions also allow you to aggregate capacity from various types of media (e.g., solid state drives and virtual disks).

## Content Delivery Network
Content Delivery Networks (CDNs) are used by content providers to store data in different regions and serve content to customers using the closest data center. 