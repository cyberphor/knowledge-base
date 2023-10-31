# Azure Storage
* Compare Azure Storage services
* Describe storage tiers
* Describe redundancy options
* Describe storage account options and storage types
* Identify options for moving files, including AzCopy, Azure Storage Explorer, and Azure File Sync
* Describe migration options, including Azure Migrate and Azure Data Box

Azure Storage is a platform for storing and accessing structured (e.g., tables), semi-structured (e.g., dictionaries), and unstructured data (e.g., images). It provides the following benefits:
- **High availability:** it replicates data across data centers 
- **Security:** it encrypts data and uses configurable access
- **Accessibility:** it provides a number of APIs and Software Development Kits

## Data Types

### Structured Data
Structured data follows a schema. A schema defines field data types, field formats, and relationships between tables. It also requires all records in a table to have the same fields. It’s hard to change a schema after it’s created without having a negative impact. 

### Semi-Structured
Semi-structured data is denoted with tags and look like dictionaries (e.g., JSON, XML, key-value pairs, and graph data). New fields can be added without having a negative impact on existing data. 

### Unstructured
Unstructured data is data that does not completely follow a schema or use tags. Some examples are images, audio files, video files, email, and Microsoft Office documents. An instance of unstructured data is known as a Binary Large Object (BLOB) or blob. Blobs account for 70% of the world’s data. 

## Services
- **Azure Blobs:** Azure Blobs is a service for storing blobs. 
- **Azure Tables:** Azure Tables is a service for storing dictionaries. 
- **Azure Files:** Azure Files is a service for sharing files using the Server Message Block (SMB) protocol. In practice, files are made available after an SMB share is mounted.  
- **Azure Queue:** Azure Queue is a message broker service. A message broker translates messages between an app’s frontend, backend, and/or database components. It is used to improve the responsiveness of an app. For example, after a user submits a request to the frontend, the frontend passes the request to the message broker. The message broker acknowledges the request (allowing the frontend to resume listening for new requests) and then sends it to the backend for processing.
