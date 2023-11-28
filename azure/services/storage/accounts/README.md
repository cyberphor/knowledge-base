# Storage Accounts
Storage accounts are used to organize data. 

## Storage Account Endpoints
Storage accounts provide a unique namespace that can be accessed via HTTP or HTTPS. The endpoint is a combination of the storage account name and service. 
```bash
# Blobs
https://cyberphorstorage.blob.core.windows.net

# Files
https://cyberphorstorage.file.core.windows.net

# Queue
https://cyberphorstorage.queue.core.windows.net
```

### Storage Account Naming Conventions  
Storage account accounts must follow the naming convention described below. 
* Length: 3 to 24 characters
* Character sets: lowercase and numbers only

## Storage Account Types
There are four types of storage accounts. 

| Type                | Services Supported              | Redundancy Options  |
| ------------------  | ------------------------------- | ------------------- |
| Standard            | Blobs, Tables, Files, and Queue | LRS, ZRS, GRS, GZRS |
| Premium Block Blob  | Blobs                           | LRS, ZRS            |
| Premium Page Blobs  | Blobs                           | LRS                 |
| Premium File Shares | Files                           | LRS, ZRS            |