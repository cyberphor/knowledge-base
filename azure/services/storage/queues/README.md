# Azure Queue
Azure Queue is a *message broker* service. 

**Message Broker**  
A message broker translates messages between an app’s frontend, backend, and/or database components. It is used to improve the responsiveness of an app. For example, after a user submits a request to the frontend, the frontend passes the request to the message broker. The message broker acknowledges the request (allowing the frontend to resume listening for new requests) and then sends it to the backend for processing.