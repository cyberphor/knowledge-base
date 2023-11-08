# Storage Services

## Azure Blobs  
Azure Blobs is a service for storing [blobs](/storage/README.md#unstructured-data). 

## Azure Tables  
Azure Tables is a service for storing [dictionaries](/storage/README.md#semi-structured-data). 

## Azure Files  
Azure Files is a service for sharing files using the Server Message Block (SMB) protocol. In practice, files are made available after an SMB share is mounted.  

## Azure Queue
Azure Queue is a *message broker* service. 

**Message Broker**  
A message broker translates messages between an app’s frontend, backend, and/or database components. It is used to improve the responsiveness of an app. For example, after a user submits a request to the frontend, the frontend passes the request to the message broker. The message broker acknowledges the request (allowing the frontend to resume listening for new requests) and then sends it to the backend for processing.
