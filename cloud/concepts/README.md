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
* Data centers as well as the capital and operations required to run them

![shared-responsibility-model.png](/cloud/concepts/shared-responsibility-model.png)

**Consumption-Based Model**  
In a consumption-based model, customers only pay for what they use. Consumption-based services, like cloud computing, are categorized as [Operational Expenditures (OpEx)](/cloud/business-operations/expenditures/README.md#categories). Other examples of OpEx are renting a building and/or paying for electricity. 

**Serverless Computing**  
Definition goes here. 

## Cloud Service Models
There are three types of cloud service models.

**Infrastructure as a Service** 
In a Infrastructure as a Service (IaaS) model, you're renting a hypervisor (the CSP is responsible for the hypervisor and everything below). You are responsible for the virtual machine and above. The need to perform a *lift-and-shift* migration is one use-case for the IaaS model. 

*Lift-and-Shift Migration*  
A lift-and-shift migration is when you build cloud resources that mirror your on-prem resources before moving a service to the cloud.  

**Platform as a Service**  
In a Platform as a Service (PaaS) model, you're renting a virtual machine (the CSP is responsible for the virtual machine, licensing, and everything below). You are responsible for the app and above. The need for *analytics and business intelligence* is one use-case for the PaaS model. 

*Analytics and Business Intelligence*  
Analytics and business intelligence involves mining data, finding patterns, and forecasting to make decisions. 

**Software as a Service**  
In a Software as a Service (IaaS) model, you're renting an app (the CSP is responsible for the app and everything below). You are responsible their data and the identities used to access them. Below is a list of SaaS use-cases. 
* Email
* Collaboration tools
* Finance tools

| Service Type                       | CSP Responsibility           | Use-Case                                | Audience       | Example            |
| ---------------------------------- | ---------------------------- | --------------------------------------- | -------------- | ------------------ |
| Software as a Service (SaaS)       | Infrastructure, OS, app      | Email, collaboration, and finance tools | Users          | Office 365         |
| Platform as a Service (PaaS)       | Infrastructure, OS,          | Analytics and business intelligence     | Developers     | Azure SQL Database |
| Infrastructure as a Service (IaaS) | Infrastructure               | Lift-and-shift migrations               | Administrators | Azure              |

**Anything as a Service**    
Anything as a Service (XaaS) is a catch-all phrase for technical solutions that have been moved to the cloud. 
* Transportation as a Service
* Groceries as a Service 

![cloud-service-models.png](/cloud/concepts/cloud-service-models.png)

### Cloud Service Deployment Models
There are multiple cloud service deployment models.  

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

## Cloud Benefits
**Scalability**  
Scalability is the ability to adjust resources to meet demand. 
* Vertical Scaling: increasing/decreasing the *capability* of a resource (e.g., giving a virtual machine a faster CPU). 
* Horizontal Scaling: increasing/decreasing the *quantity* of a resource (e.g., adding another virtual machine). Its used to address task division and assignment. 

**Reliability**  
Reliability is the ability for a service to recover from a failure and continue to function. 

**High Availability**  
High availability is the ability for a service to remain online despite a disruption. Availability guarantees are documented as percentages in [Service Level Agreements (SLAs)](/cloud/business-operations/service-providers/README.md#service-documents).

**Predictability**  
Predictability is the ability to anticipate performance and/or cost to deliver a service. 
* Performance factors: load balancing, high availability, and autoscaling.
* Cost factors: monitoring and analytics.

**Governance**  
Set templates are used to ensure resources are deployed in compliance with regulatory requirements and organizational policies. 

**Security**  
The cloud is resilient to Distributed Denial-of-Service (DDoS) attacks. 

**Manageability**  
There are two types of cloud management. 
* Management of the cloud: represents "what you manage" (e.g., resources)
* Management in the cloud: represents "how you manage" (e.g., Azure Portal, Azure CLI, PowerShell, and APIs)