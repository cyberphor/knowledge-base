# Cloud Computing
Cloud computing is a strategy for providing on-demand network access to *resources* that can be rapidly provisioned with minimal *Cloud Service Provider* interaction. National Institute of Standards and Technology Special Publication 800-145 defines cloud computing using [characteristics](#characteristics), [service models](#service-models), and [service deployment models](#service-deployment-models). 

**Resources**  
Resources include networks, servers, storage, applications, and services.

**Cloud Service Providers**  
Cloud Service Providers (CSPs) offer distributed computing resources and services as a utility. Microsoft, Amazon, and Google are CSPs. The alternative to a CSP would be running a data center yourself. 

**Cloud Service Components**  
A cloud service includes the following components:
* Data center: where services are hosted
* Client: how services are accessed
* Network connection: the path between the data center and client (path ownership depends the [service deployment model](#service-deployment-models))

## Characteristics
**On-Demand Self-Service**  
Cloud resources can be provisioned as needed and with minimal interaction from the CSP.

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

**Anything as a Service** (XaaS)  
XaaS is a catch-all phrase for technical solutions that have been moved to the cloud. 
* Transportation as a Service
* Groceries as a Service 

![cloud-server-models.png](/cloud/cloud-service-models.png)

## Service Deployment Models
Cloud services can be deployed using one of the four models described below. 

**Private**  
In a Private cloud service deployment model, a single customer owns the cloud and access is restricted to its employees. 

**Public**  
In a Public cloud service deployment model, the CSP owns the cloud and access is available to any customer.

**Community**  
In a Community cloud service deployment model, a single customer owns the cloud and access is restricted to multiple customers.

**Hybrid Cloud**  
In a Hybrid cloud deployment model, two or more of the cloud service deployment models described above are combined. 

## Advantages and Disadvantages
There are multiple advantages and disadvantages in using the cloud (instead of on-prem) to deploy an IT solution.

### Advantages
**Cloud Computing is Simpler** 
Deploying an IT solution consists of the phases listed below. These tasks are abstracted from the consumer when using the cloud. 
* Procurement
* Setup
* Operation
* Maintenance

**Cloud Computing is Cheaper**
Deploying an IT solution generates the costs described below. The cloud allows you to dynamically change and scale your IT solution. 
* Acquisition costs
  * Commiting to using the technology long enough to get your money back could have an impact on how well your solution ages. 
* Sustainment costs 
  * In-house deployments tend to have greater disparities between the utilization (i.e., percentage of time a system is used at full capacity) and cost of an IT solution.  
* Scalability costs
  * CSPs do not charge for moving data to and/or within the cloud (they mostly charge you to export data)

**Cloud Computing Improves Utilization**  
Cloud computing shares the same physical resources between multiple organizations, reducing situations where expensive compute, storage, or network resources are idle. 

**Cloud Computing Makes Scaling Easier**  
Organizations can leverage the data centers CSPs have around the world and rapidly deploy an application. 

### Disadvantages
**Vendor Lock-In**  
Features are not standardized between CSPs, making it tedious to move from vendor to another. 

**Security**  
The organization’s data will be protected by someone else. 

**Privacy**  
The user’s data will be protected by someone else. 

**Reliability**  
If a network connection to or from a CSP is interrupted, the service in question will not be available. 

**Programming a Cloud is Complex**  
Cloud programmers must use APIs like MapReduce, Spark, and GraphLab. 

**Moving Data is Slower**  
Cloud computing relies on the Internet which is slower than a LAN. 

**Quality of Service is Not Always Assured**  
Multi-tenancy makes it hard for CSPs to guarantee QoS. 
