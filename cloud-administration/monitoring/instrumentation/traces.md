# Traces
Traces describe a chain of events across a system. Below is an example.
1. A client submits a request to Azure Kubernetes Service (AKS)
2. The request is ingested by an Ingestion Service
3. The Ingestion Service puts the request on a Service Bus
4. The Service Bus sends the reques tot a Workflow Service
5. The Worfklow service sends the reques to a delivery service, drone scheduler, and package service. 