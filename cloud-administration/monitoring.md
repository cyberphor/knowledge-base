# Monitoring
Monitoring is used to detect errors, failures, and changes in performance. 

## Metrics
Metrics are samples of ongoing conditions. There are two main types: business metrics and operational metrics. 

**Business Metrics**  
Text goes here. 

**Operational Metrics**
Operational metrics measure the internal efficiency of DevOps processes. They emphasize performace and the stability of operations. Below are some examples.
* Latency: response time
* Throughput: requests per minute
* Availability: percent of time an app is responsive
* Utilization: percent of hardware use
* Error: number of errors
* Garbage Collector: time it takes to clean memory

## Logs
Logs are used to record interesting events. Logs can be generated from metrics.

## Traces
Traces describe a chain of events across a system. Below is an example.
1. A client submits a request to Azure Kubernetes Service (AKS)
2. The request is ingested by an Ingestion Service
3. The Ingestion Service puts the request on a Service Bus
4. The Service Bus sends the reques tot a Workflow Service
5. The Worfklow service sends the reques to a delivery service, drone scheduler, and package service. 

## Application Performance Monitoirng (APM) Architectures
**Agent-based**  
An agent is used to generate, collect, and push metrics/logs to a server. 

**Agentless**  
Text goes here. 

**Integrated with Microservices**  
Text goes here. 

**Integrated with the Platform**  
Text goes here. 

## Monitoring Stategies
**Monitor at a High-Level**  
Below are different techniques for measuring metrics at a high-level.  
* Assign qualitative labels to metrics 
* Measure the saturation point (i.e., when an app becomes unresponsive)
* Correlate metrics and determine how they relate to each other

**Monitor Using a Ticketing System**  
Below is a process for planning a ticketing system for monitoring metrics. 
1. Define what events are adverse
2. Define what is urgent, non-urgent, important, and not important
3. Define the level of authority required to respond
4. Define who is able and available to respond when there is an adverse event

**Monitor Using Key Performance Indicators (KPIs)**  
Below are examples of KPIs you can monitor. 
* Time required to enter data into a form. 
* The difference between items in a catalog and number of purchases 
* Mean Time to Resolve (MTTR)