# Cloud Computing
* [Cloud Computing Characteristics](#cloud-computing-characteristics)
* [Cloud Service Models](#cloud-service-models)
* [Cloud Service Deployment Models](#cloud-service-deployment-models)

**The NIST Definition of Cloud Computing**  
Cloud computing is a *model* for enabling ubiquitous, convenient, and on-demand network access to a shared pool of configurable computing resources (e.g., networks, servers, storage, applications, and services) that can be rapidly provisioned and released with minimal management effort or [Cloud Service Provider (CSP)](/cloud/business-operations/service-providers/README.md) interaction. This model includes:
* [Five characteristics](/cloud/README.md#cloud-computing-characteristics)
* [Three service models](/cloud/README.md#cloud-service-models)
* [Three service deployment models](/cloud/README.md#cloud-service-deployment-models)

**CompTIA Cloud+**  
The [CompTIA Cloud+ certification](https://partners.comptia.org/docs/default-source/resources/comptia-cloud-cv0-003-exam-objectives-(1-0)) proves you have the knowledge and skills required to do the following:
* Understand cloud architecture (e.g., cloud service models and cloud service deployment models)
* Design and deploy cloud-based solutions
* Maintain, secure, and optimize a cloud environment
* Troubleshoot cloud-related issues

## Cloud Computing Characteristics
**On-Demand Self-Service**  
Resources can be provisioned as needed and automatically (i.e., with minimal interaction from the CSP).

**Broad Network Access**  
Resources can be accessed using a variety of clients (e.g., desktops, laptops, and mobile devices).

**Resource Pooling**  
Hardware resources are aggregated by the CSP and shared between customers. Resource pooling is an example of *multi-tenancy* (when multiple users share physical resources but are logically isolated from each other).

**Rapid Elasticity**  
Resources can be dynamically scaled to meet demand. They should feel elastic (i.e., you can use any number of instances at any time). Dynamic scaling helps improve resource utilization and reduce cost. 

**Measured Service**  
Resource utilization can be measured and then billed using a consumption-based model (you only pay for what you use). Consumption-based utilities, like cloud computing, are categorized as [Operational Expenditures (OpEx)](/cloud/business-operations/expenditures/README.md#categories). Other examples of OpEx are renting a building and/or paying for electricity. 

## Cloud Service Models
**Infrastructure as a Service**  
In a Infrastructure as a Service (IaaS) model, you're renting the physical hardware and hypervisor needed to host virtualized resources (e.g., virtual machines, containers, storage appliances, or load balancers). 
* You are responsible for the virtualized resources and above
* The CSP is responsible for the hypervisor and below

**Platform as a Service**  
In a Platform as a Service (PaaS) model, you're renting the physical hardware, hypervisor, and virtualized resources needed to develop applications. 
* You are responsible for what you develop
* The CSP is responsible for the platform and below 

**Software as a Service**  
In a Software as a Service (IaaS) model, you're renting software to manage data. 
* You are responsible the data and the identities used to access it
* The CSP is responsible for the app and below 

| Service Type | CSP Responsibility            | Use-Case                  | Audience       | Example            |
| ------------ | ----------------------------- | ------------------------- | -------------- | ------------------ |
| SaaS         | Infrastructure, platform, app | Email                     | Users          | Office 365         |
| PaaS         | Infrastructure, platform,     | Data Engineering          | Developers     | Azure SQL Database |
| IaaS         | Infrastructure                | Lift-and-shift migrations | Administrators | Azure              |

**Anything as a Service**    
Anything as a Service (XaaS) is any technical solution that has been moved to the cloud-based computing model 
* Storage as a Service (e.g., OneDrive, Google Drive, and DropBox)
* Transportation as a Service (e.g., Uber)
* Food as a Service (e.g., Uber Eats)

![cloud-service-models.png](/cloud/cloud-service-models.png)

### Cloud Service Deployment Models
**Public**  
In a Public cloud model, the CSP owns the cloud and access is available to any customer.

**Private**  
In a Private cloud model, you own the cloud and access is restricted to your organization. 

**Community**  
In a Community cloud model, a single customer owns the cloud and access is restricted to multiple customers.

**Hybrid Cloud**  
In a Hybrid cloud model, two or more of the cloud models above are combined. Hybrid cloud models improve flexibility and security but are expensive. 

**Multi-Cloud**  
In a Multi-Cloud model, a customer uses two or more CSPs for cloud computing. [Azure Arc](/azure/management/README.md#deployment-tools) is a multi-cloud and on-prem management platform. 

**Virtual Private Cloud**  
In a Virtual Private Cloud (VPC), you are the only tenant using resources hosted by a CSP.  