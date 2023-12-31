# Azure Storage Accounts
Storage accounts provide namespaces like a directory and help organize data. They provide access to Azure Blobs, Azure Storage, Azure Tables, and Azure Queues. A container within a storage account is like a folder. All storage account types use Storage Service Encryption. 

![azure-blobs.png](/cloud/azure/services/storage/types/unstructured-data/blobs/azure-blobs.png)

## Storage Account Types
There are two main types of storage accounts: Standard and Premium. You cannot change storage account types after creation. You must create a new account if your requirements (e.g., speed or access frequency) change. 

| Hardware Used     | Type                | Use Cases                        | Redundancy Options  |
| ----------------- | ------------------- | -------------------------------- | ------------------- |
| Hard Disk Drive   | Standard            | Blobs, tables, and queues        | LRS, ZRS, GRS, GZRS |
| Solid State Drive | Premium File Shares | File shares                      | LRS, ZRS            |
| Solid State Drive | Premium Block Blob  | Blobs stored as blocks           | LRS, ZRS            |
| Solid State Drive | Premium Page Blob   | Virtual machine disks            | LRS                 |

### Standard Storage Accounts
Standard storage accounts are used for infrequently accessed data. Premium storage accounts are used for frequently accessed data.

### Premium File Share Storage Account
The Premium File Share storage account is meant for file shares. Use it if you need both SMB and NFS support.

### Premium Block Blob Storage Account
The Premium Block Blob storage account is meant for blobs and/or data lakes with high transaction rates. 

### Premium Page Blob Storage Account
The Premium Page Blob storage account is meant for index-based data structures like virtual machine disks. 

## Storage Account Naming Conventions  
Storage account accounts must follow the naming convention described below. 
* Length: 3 to 24 characters
* Character sets: lowercase and numbers only

## Storage Account Endpoints
Storage accounts provide a unique namespace that can be accessed via HTTP or HTTPS. The endpoint (aka URL) is a combination of the storage account name and service used. 
```bash
# Blobs
https://cyberphorstorage.blob.core.windows.net

# Files
https://cyberphorstorage.file.core.windows.net

# Queue
https://cyberphorstorage.queue.core.windows.net
```
