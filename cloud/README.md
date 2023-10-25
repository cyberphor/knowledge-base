# Cloud Computing
Cloud computing is a strategy for providing on-demand network access to *resources* that can be rapidly provisioned with minimal [Cloud Service Provider](/cloud/business-operations/service-providers/README.md) interaction. National Institute of Standards and Technology Special Publication 800-145 uses [characteristics](#characteristics), [service models](#service-models), and [service deployment models](#service-deployment-models) to define cloud computing. 

**Resources**  
Resources include networks, servers, storage, applications, and services.

**Cloud Service Components**  
A cloud service includes the components listed below.
* Data center: where services are hosted
* Client: how services are accessed
* Network connection: the path between the data center and client (path ownership depends the [service deployment model](#service-deployment-models))

## History
People transition from owning a product to using a service when the service becomes cheaper and more reliable.

**1950 - 1966**  
Compute resources had to be shared because they were expensive. 
* Herb Grosh suggested 15 data centers should be enough compute for the world
* John McCarthy proposed the idea of compute being public utility
* Douglas Parkhill described what we now call “cloud computing” in “The Challenge of the Computer Utility”

**1969 - 1993**  
Compute resources became accessible at the business and household level. 
* ARPANET and UNIX are developed
* Internet-age began
* Browsers became popular thanks to the World Wide Web

**1995 - 2000**
* Amazon and eBay launched
* One of the first Software-as-a-Service organizations, Salesforce, launched
* The “dot com” bubble burst, forcing organizations to begin seeking for ways to improve their IT utilization

**2006 - 2007**
* Amazon launches AWS, providing storage and compute via S3 and EC2 respectively
* Salesforce launches force.com, a cloud computing platform

## Characteristics
Clouds are defined by the characteristics described below.

**On-Demand Self-Service**  
Cloud resources can be provisioned as needed and with minimal interaction from the [Cloud Service Provider (CSP)](/cloud/business-operations/service-providers/README.md).

**Broad Network Access**  
Cloud services can be accessed using a variety of clients (e.g., desktops, laptops, and mobile devices).

**Resource Pooling**  
Hardware resources are shared between customers. Resource pooling is an example of *multitenancy*. 

<u>Multitenancy</u>  
Multitenancy is when multiple users share physical resources but are logically isolated from one another.

**Rapid Elasticity**  
Cloud resources are *elastic* and can be manually or automatically scaled to meet demand. Cloud resources should feel unlimited (i.e., you can use any number of instances at any time).

<u>Elasticity</u>  
Elasticity is the ability to scale to meet demand. 

**Measured Service**  
Cloud resources are measured, controlled, and billed (e.g., using a pay-per-use model).

## Service Models
Cloud services are categorized into one of three models based on how much responsibility is outsourced to the CSP.

| Service Model                      | CSP Responsibility           | Level of Customer Control                             | Audience       | Example            |
| ---------------------------------- | ---------------------------- | ----------------------------------------------------- | -------------- | ------------------ |
| Software as a Service (SaaS)       | Infrastructure, OS, app      | Manage access to apps                                 | Users          | Office 365         |
| Platform as a Service (PaaS)       | Infrastructure, OS,          | Pick apps and configure settings                      | Developers     | Azure SQL Database |
| Infrastructure as a Service (IaaS) | Infrastructure               | Pick the OS and/or network resources (e.g., firewall) | Administrators | Azure              |

**Anything as a Service**    
Anything as a Service (XaaS) is a catch-all phrase for technical solutions that have been moved to the cloud. 
* Transportation as a Service
* Groceries as a Service 

![cloud-server-models.png](/cloud/cloud-service-models.png)

## Service Deployment Models
Cloud services can be deployed using one of the four models described below. The decision to pick one over the other is based on security. 

**Private**  
In a Private cloud service deployment model, a single customer owns the cloud and access is restricted to its employees. 

**Public**  
In a Public cloud service deployment model, the CSP owns the cloud and access is available to any customer.

**Community**  
In a Community cloud service deployment model, a single customer owns the cloud and access is restricted to multiple customers.

**Hybrid Cloud**  
In a Hybrid cloud deployment model, two or more of the cloud service deployment models described above are combined. 

## Cloud Design
Cloud design is based on decisions relating to the topics below. 

### Cloud Service Model
The decision to pick one [Cloud Service Model](/cloud/README.md#service-models) (i.e., Public, Private, Community, or Hybrid) over the other is based on security. 

### Cloud Service Deployment Model
The decision to implement one [Cloud Service Deployment Model](/cloud/README.md#service-deployment-models) (i.e., SaaS, PaaS, and IaaS) over the other depends on how much responsibility a customer wants to outsource to a CSP for a given service. For example, your organization may wish to use SaaS for email but conduct malware analysis using IaaS. 

### Cloud Elasticity
Cloud elasticity requirements are based on the output of [capacity planning](/cloud/techincal-operations/scaling/README.md#capacity-planning).  

**Scaling-Up**  
Scaling-up is the process of upgrading existing resources within a cloud service (e.g., one small VM becomes a medium VM). 

**Scaling-Out**
Scaling-out is the process of adding additional resources to a cloud service (e.g., one small VM becomes two small VMs). 

## Risk Management
Redundancy, high availability, and diaster recovery requirements are based on how much loss can be sustained if there was an incident. 

**Redundancy**  
Redundancy is when there is more than one resource available. 

**Availability**  
Availability represents how long a cloud service can be offline. It's a measurement of time described in 9s. For example, if a cloud service must be online 99.999% of time, it can only be offline for 5 minutes all year. 

**Disaster Recovery**  
Disaster recovery is the process of restoring cloud services in the event of a failure (the size of the "disaster" is irrelevant). 

*Recovery Point Objective* (RPO)  
The RPO is the time between the most recent backup and the disaster. It helps describe how much data can be lost (ex: "I can afford to reboot this VM and lose data because my RPO is 72 hours"). 

*Recover Time Objective* (RTO)  
The RTO is the time between a disaster and when the affected cloud service needs to be back online (ex: "we have 6 hours to meet our RTO and fix this").