# Azure Storage
Azure's [IaaS](/cloud/concepts/README.md#cloud-service-models) offerings include the storage services and options described below. Data stored in Azure is organized using *storage accounts*. 

## Storage Services
### Azure Blobs  
Azure Blobs is a service for storing [blobs](/storage/README.md#unstructured-data). 

### Azure Tables  
Azure Tables is a service for storing [dictionaries](/storage/README.md#semi-structured-data). 

## Azure Files  
Azure Files is a service for sharing files using the Server Message Block (SMB) protocol. In practice, files are made available after an SMB share is mounted.  

## Azure Queue
Azure Queue is a *message broker* service. 

**Message Broker**  
A message broker translates messages between an app’s frontend, backend, and/or database components. It is used to improve the responsiveness of an app. For example, after a user submits a request to the frontend, the frontend passes the request to the message broker. The message broker acknowledges the request (allowing the frontend to resume listening for new requests) and then sends it to the backend for processing.

## Storage Options
### Tiers

### Redundancy Options
**Locally Redundant Storage**  

**Geo-Redundant Storage**  

**Read-Access Geo-Redundant Storage**  

**Zone-Redundant Storage**  

**Geo-Zone-Redundant Storage**  

**Read-Access Geo-Zone-Redundant Storage**  

## Storage Accounts
Storage accounts are used to organize data. 

### Storage Account Endpoints
Storage accounts provide a unique namespace that can be accessed via HTTP or HTTPS. The endpoint is a combination of the storage account name and service. 
```bash
# Blobs
https://cyberphorstorage.blob.core.windows.net

# Files
https://cyberphorstorage.file.core.windows.net

# Queue
https://cyberphorstorage.queue.core.windows.net
```

**Naming Convention**  
Storage account accounts must follow the naming convention described below. 
* Length: 3 to 24 characters
* Character sets: lowercase and numbers only

### Storage Account Types
There are four types of storage accounts. 

| Type                | Services Supported              | Redundancy Options                   |
| ------------------  | ------------------------------- | ------------------------------------ |
| Standard            | Blobs, Tables, Files, and Queue | LRS, GRS, RA-GRS, ZRS, GZRS, RA-GZRS |
| Premium Block Blob  | Blobs                           | LRS, ZRS                             |
| Premium Page Blobs  | Blobs                           | LRS                                  |
| Premium File Shares | Files                           | LRS, ZRS                             |

### Transfer Options
**AzCopy**  

**Azure Storage Explorer**  

**Azure File Sync**

### Migration Options
**Azure Migrate**

**Azure Data Box**