# Cloud Concepts

## Cloud Computing
**Cloud Computing**  
Cloud computing is the delivery of services (e.g., compute, storage, network, and/or security) over the Internet. Cloud computing is not constrained by physical capacity. 

**Shared Responsibility Model**  
The Shared Responsibility Model (SRM) is a sustainment and security policy. It separates responsibilities between Cloud Security Providers (CSPs) and organizations based on service types (e.g., IaaS, PaaS, and SaaS). CSPs are responsible for security *of* the cloud, customers are responsible for security *in* the cloud.

Customers are responsible for their:
* Clients
* Identity management
* Data

CSPs are responsible for:
* Physical servers

![shared-responsibility-model.png](/cloud/concepts/shared-responsibility-model.png)

**Consumption-Based Model**  
In a consumption-based model, customers only pay for what they use. Consumption-based services, like cloud computing, are categorized as [Operational Expenditures (OpEx)](/cloud/business-operations/expenditures/README.md#categories). Other examples of OpEx are renting a building and/or paying for electricity. 

**Serverless Computing**  
Definition goes here. 

### Cloud Models
Cloud models are used to describe how resources are deployed. 

**Private**  
In a Private cloud model, a single customer owns the data center and access is restricted to its employees. 

**Public**  
In a Public cloud model, the CSP owns the data center and access is available to any customer.

**Community**  
In a Community cloud model, a single customer owns the cloud and access is restricted to multiple customers.

**Hybrid Cloud**  
In a Hybrid cloud model, two or more of the cloud models above are combined. Hybrid cloud models improve flexibility and security but are expensive. 

**Multi-Cloud**  
In a Multi-Cloud model, a customer uses two or more CSPs for cloud computing. [Azure Arc](/azure/management/README.md#deployment-tools) is a multi-cloud and on-prem management platform. 

## Cloud Service Types
There are three types of cloud services.

**Infrastructure as a Service**  
Definition goes here. Use-case goes here.

**Platform as a Service**  
Definition goes here. Use-case goes here.

**Software as a Service**  
Definition goes here. Use-case goes here.

| Service Type                      | CSP Responsibility           | Level of Customer Control                             | Audience       | Example            |
| ---------------------------------- | ---------------------------- | ----------------------------------------------------- | -------------- | ------------------ |
| Software as a Service (SaaS)       | Infrastructure, OS, app      | Manage access to apps                                 | Users          | Office 365         |
| Platform as a Service (PaaS)       | Infrastructure, OS,          | Pick apps and configure settings                      | Developers     | Azure SQL Database |
| Infrastructure as a Service (IaaS) | Infrastructure               | Pick the OS and/or network resources (e.g., firewall) | Administrators | Azure              |

**Anything as a Service**    
Anything as a Service (XaaS) is a catch-all phrase for technical solutions that have been moved to the cloud. 
* Transportation as a Service
* Groceries as a Service 

![cloud-service-models.png](/cloud/concepts/cloud-service-models.png)

## Cloud Benefits
**Scalability**  
Scalability is the ability to adjust resources to meet demand. 
* Vertical Scaling: upgrading or replacing technology (e.g., faster CPUs and memory). The number of resources does NOT change after something has been vertically scaled. 
* Horizontal Scaling: increase the number of resources dedicated to a resource or service (e.g., adding an additional virtual machine). Its used to address task division and assignment. 

**Reliability**  
Reliability is the ability for a service to recover from a failure. 

**High Availability**  
High availability is the ability for a service to remain online despite a disruption. Availability guarantees are documented as percentages in [Service Level Agreements (SLAs)](/cloud/business-operations/service-providers/README.md#service-documents).

**Predictability**  
Predictability is the ability to anticipate performance and/or cost to deliver a service. 
* Performance factors: load balancing, high availability, and autoscaling.
* Cost factors: monitoring and analytics.

**Security**  
Definition goes here. Use-case goes here.

**Governance**  
Definition goes here. Use-case goes here.

**Manageability**  
Definition goes here. Use-case goes here.