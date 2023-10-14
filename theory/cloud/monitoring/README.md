# Cloud Monitoring
Cloud monitoring is used to detect changes, errors, failures, and threats to a cloud's reliability and availability. Cloud monitoring depends on telemetry, or the remote measurement of variables. A monitoring system usually waits for an app to do something (e.g., respond to a request) and then measures the service level observed. 

```mermaid
flowchart LR
  Step1("Identify KPIs") 
  --> Step2("Implement an instrumentaton system to generate and collect monitoring data")
    --> Step3("Analyze the data")
      --> Step4("Visualize data")
```

## Telemetry
In cloud administration, reliability and availability are measured using [metrics](/cloud/monitoring/README.md#metrics), logs, and traces. Each of these can be thought of as different types of measurements. 

### Metrics
Metrics are measurements of performance and represent the state of a service. The metrics an organization chooses to collect are based on what is most important to their users and/or customers.

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

**Application Performance Monitors**  
[Application Performance Monitors (APMs)](/cloud/monitoring/apm.md) are used to provide high-level and customer-oriented metrics. Below are some examples. 
* 5-star ratings
* Service abandonments (the time difference between a customer giving up before an app provides a service)
* Logon frequency 

### Logs
A log is a table of data used to record an event. A log can be generated using multiple [metrics](/cloud/monitoring/README.md#metrics). For example, a log of process execution would consist of the following [metrics](/cloud/monitoring/README.md#metrics):
* Resource usage
* Duration
* Concurrency information

**Auditable Logs**  
Logs are auditable when they allow you to analyze the operation of a system. Auditable logs must include the properties listed below. 
| Property                                  | Example           | 
| ----------------------------------------- | ----------------- |
| Activity time                             | 2023-10-13 11:16  |
| Activity category                         | Logon             |
| The identity of the activity owner        | cyberphor         |
| Names of objects affected by the activity | Domain Controller |
| Activity result                           | Successful        |

**Log Management Systems**  
Log management systems are used to manage log access and life cycles. Log management systems also perform the tasks listed below. 
* Normalization
* Correlation
* Reporting

**Logging Use Cases**  
Below is a list of use cases for logging. 
* Root Cause Analysis (RCA)
* A/B testing to make decisions
* Business Intelligence 
* User & Entity Behavior Analytics (UEBA)
* Monitoring and Alerting
* Compliance Auditing

### Traces
Traces used multiple logs describe a chain of events across a system. Below is an example.
1. A client submits a request to the Azure Kubernetes Service (AKS)
2. The request is ingested by an Ingestion Service
3. The Ingestion Service puts the request on a Service Bus
4. The Service Bus sends the request to a Workflow Service
5. The Worfklow Service sends the request to a delivery service, drone scheduler, and package service

**Tracing Activity Within a Microservice Architecture**  
Use APMs designed for microservices (e.g., [Prometheus](/theory/cloud/monitoring/apm.md#prometheus)). Traditional APMs are meant for monolithic apps. Microservices are difficult to monitor because every service is an app unto itself. They also generate more observable activity (e.g., service discovery and replication). 

## Cloud Monitoring Stategies
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

## Remediation Plans
**Scaling**  
Scaling is the process of adjusting infrastructure to meet changes in demand. Workloads in production are too unpredictable for manual scaling. The Azure Monitor service provides auto-scaling.

**Availability Tests**   
Availability tests are used to check if an app is responding as expected. 