# Cloud Computing
Cloud computing is a strategy for providing on-demand network access to *resources* that can be rapidly provisioned with minimal *Cloud Service Provider* interaction. National Institute of Standards and Technology Special Publication 800-145 defines cloud computing using [characteristics](#characteristics), [service models](#service-models), and [deployment models](#deployment-models). 

**Resources**  
Resources include networks, servers, storage, applications, and services.

**Cloud Service Providers**  
Cloud Service Providers (CSPs) offer distributed computing resources and services as a utility. Microsoft, Amazon, and Google are CSPs. The alternative to a CSP would be running a data center yourself. 

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
Cloud resources can be manually or automatically scaled to meet demand. Cloud resources should feel unlimited (i.e., you can use any number of instances at any time).

**Measured Service**  
Cloud resources are measured, controlled, and billed (e.g., using a pay-per-use model).

## Service Models
Cloud services are categorized into one of three models based on how much responsibility is outsourced to the CSP.

| Service Model                      | CSP Responsibility           | Level of Customer Control                             |
| ---------------------------------- | ---------------------------- | ----------------------------------------------------- |
| Software as a Service (SaaS)       | Infrastructure, OS, app      | Manage access to apps                                 |
| Platform as a Service (PaaS)       | Infrastructure, OS,          | Pick apps and configure settings                      |
| Infrastructure as a Service (IaaS) | Infrastructure               | Pick the OS and/or network resources (e.g., firewall) |

**Anything as a Service** (XaaS)  
XaaS is a catch-all phrase for technical solutions that have been moved to the cloud (e.g., Monitoring as a Service). 

![cloud-server-models.png](/cloud/cloud-service-models.png)

## Deployment Models
There are three types of clouds: public, private, and hybrid. 

| Differences    | Public         | Private         | Hybrid                 |
| -------------- | -------------- | --------------- | ---------------------- |
| Ownership      | CSP            | Unit            | Unit and CSP           |
| Infrastructure | Hosted by CSP  | Hosted by unit  | Hosted by CSP and unit |
| Availability   | Shared         | Restricted      | On-demand              |
| Cost           | Prorated       | Expensive       | Expensive              |
| Security       | Defined by CSP | Defined by unit | Regulated              |
| Data Location  | Internet       | Intranet        | Intranet and Internet  |

**Sovereign Clouds**  
A sovereign cloud is a variant of the public cloud. They are restricted to authorized personnel only and physically isolated from other public clouds.

**Community Clouds**  
A community cloud is when different organizations with common security concerns share infrastructure. 

**Distributed Clouds**  
A distributed cloud provides organizations access to machines in different geographical locations. 
