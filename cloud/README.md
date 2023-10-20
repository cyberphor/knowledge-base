# Cloud Administration

## Cloud
A cloud is a data center used to offer distributed computing resources and services. Clouds are evaluated based on the properties listed below. 
* Elasticity
* Reliability
* Availability

## Cloud Service Providers
Cloud Service Providers (CSP) offer distributed computing resources and services as a utility. Microsoft, Amazon, and Google are CSPs. The alternative to a CSP would be running a data center yourself. 

## Cloud Layers
A cloud-based IT solution can be abstracted using different layers. 

### Infrastructure Layer (i.e., metal)
The Infrastructure layer is the bottom-most layer of a cloud and consists of mostly hardware. 
* Physical servers
* Physical and logical storage (e.g., volumes)
* Physical network connections

### Resource Sharing Layer (e.g., hypervisor)
The Resource Sharing layer sits on top of the Infrastructure layer and consists of mostly virtualization technology. 
* Virtual machines
* Operating systems

### Development Platform Layer
The Development Platform layer sits on top of the Resource Sharing layer and consists of mostly APIs. 
* Authentication APIs (e.g., to authenticate a user)
* Storage APIs (e.g., to access a volume)

### Application Software Layer
The Application Software layer sits on top of the Development Platform layer and consists of User Interfaces. 
* CRM software

## Cloud Computing Service Models
Cloud computing services are categorized into one of three models: 
* Infrastructure as a Service (IaaS): renting hardware
* Platform as a Service (PaaS): renting Virtual Machines and/or containers
* Software as a Service (SaaS): renting serverless functions

### IaaS
In an IaaS model, organizations rent VMs (aka “instances”) from the CSP (e.g., Azure Virtual Machine or AWS EC2). The CPU, memory, storage, and bandwidth of the VM they rent can be provisioned to their specification. 

**IaaS Use Cases**  
* New organizations that can’t afford on-premise infrastructure
* Start-up companies
* Temporary projects
* When organizations need to “lift-and-shift” on-premise infrastructure to the cloud

**IaaS Cost**  
CSPs usually charge by time (e.g., by the hour) in an IaaS model. Some CSPs offer prorating billing (i.e., only pay what you used) which is good for when cloud bursting occurs (i.e., a cloud is over-utilized). 

## PaaS 
In a PaaS model, organizations rent platforms like web or database servers from the CSP (e.g., Azure SQL Database, Azure App Service, Azure Functions, or AWS Elastic Beanstalk). The CSP is responsible for administrative priorities like licensing and maintenance. Applications deployed using a PaaS model can be dynamically scaled to meet demand. In this model, CSPs also give organizations browser-based tools for configuring and using the “platform.”

**Paas Use Cases**
* Serverless computing
* Running containers in the cloud (e.g., the CSP provides the Docker runtime)
* Rapid app development
* Apps that don’t need to migrate in the future

**PaaS Cost**  
CSPs usually charge per use. CSPs also offer service tiers in a PaaS model, charging for specific features or resource utilization within a specific time frame. Azure Functions and Amazon Lambda only charge for the time it takes to execute a function (e.g., nightly backups).

## SaaS
In a SaaS model, organizations pay for and use software from CSPs over the Internet. 

**SaaS Use Cases**  
* CRM 
* Amazon Stream Analytics: ingests data from IoT devices, allowing developers to query it
* AI APIs
* Short-term needs (e.g., collaboration software) 

**SaaS Cost**  
CSPs usually charge by the month or year. APIs might be billed by call. 

## Cloud Types
There are three types of clouds: public, private, and hybrid. 

| Differences    | Public         | Private         | Hybrid                 |
| -------------- | -------------- | --------------- | ---------------------- |
| Ownership      | CSP            | Unit            | Unit and CSP           |
| Infrastructure | Hosted by CSP  | Hosted by unit  | Hosted by CSP and unit |
| Availability   | Shared         | Restricted      | On-demand              |
| Cost           | Prorated       | Expensive       | Expensive              |
| Security       | Defined by CSP | Defined by unit | Regulated              |
| Data Location  | Internet       | Intranet        | Intranet and Internet  |

### Sovereign Clouds
A sovereign cloud is a variant of the public cloud. They are restricted to authorized personnel only and physically isolated from other public clouds.

### Community Clouds
A community cloud is when different organizations with common security concerns share infrastructure. 

### Distributed Clouds
A distributed cloud provides organizations access to machines in different geographical locations. 

**Azure ExpressRoute**  
Azure ExpressRoute enables you to create high-speed and private connections between Azure data centers and on-prem infrastructure. 

## Advantages
There are multiple advantages in using the cloud to deploy an IT solution vs in-house. 

### Cloud Computing is Simpler
Deploying an IT solution consists of the phases listed below. These tasks are abstracted from the consumer when using the cloud. 
* Procurement
* Setup
* Operation
* Maintenance

### Cloud Computing is Cheaper
Deploying an IT solution generates the costs described below. The cloud allows you to dynamically change and scale your IT solution. 
* Acquisition costs
  * Commiting to using the technology long enough to get your money back could have an impact on how well your solution ages. 
* Sustainment costs 
  * In-house deployments tend to have greater disparities between the utilization (i.e., percentage of time a system is used at full capacity) and cost of an IT solution.  
* Scalability costs
  * CSPs do not charge for moving data to and/or within the cloud (they mostly charge you to export data)

### Cloud Computing Improves Utilization
Cloud computing shares the same physical resources between multiple organizations, reducing situations where expensive compute, storage, or network resources are idle. 

### Cloud Computing Makes Scaling Easier
Organizations can leverage the data centers CSPs have around the world and rapidly deploy an application. 

## Disadvantages
### Vendor Lock-In
Features are not standardized between CSPs, making it tedious to move from vendor to another. 

### Security
The organization’s data will be protected by someone else. 

### Privacy
The user’s data will be protected by someone else. 

### Reliability
If a network connection to or from a CSP is interrupted, the service in question will not be available. 

### Programming a Cloud is Complex
Cloud programmers must use APIs like MapReduce, Spark, and GraphLab. 

### Moving Data is Slower
Cloud computing relies on the Internet which is slower than a LAN. 

### Quality of Service is Not Always Assured
Multi-tenancy makes it hard for CSPs to guarantee QoS. 
