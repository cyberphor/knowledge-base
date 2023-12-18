# Cloud Computing
* [Cloud Computing Characteristics](#cloud-computing-characteristics)
* [Cloud Service Models](#cloud-service-models)
* [Cloud Service Deployment Models](#cloud-service-deployment-models)
* [Cloud Benefits](#cloud-benefits)
* [Cloud Design](#cloud-design)
* [Cloud Management](#cloud-management)

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
Anything as a Service (XaaS) is any technical solution that has been moved to the cloud-based computing model (e.g., Transportation as a Service or Groceries as a Service).

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

## Cloud Benefits
Cloud computing provides three main benefits to business operations. 

**Utility**  
Cloud computing reduces [Capital Expenditures (CapEx)](/cloud/business-operations/expenditures/README.md#categories) through its elasticity and measured service [characteristics](/cloud/README.md#cloud-elasticity). 

**Process Transformation**  
Cloud computing improves efficiency and collaboration through its on-demand self-service and broad network access [characteristics](/cloud/README.md#cloud-elasticity).

**Business Transformation**  
Cloud computing exposes business operations to new revenue streams. 

### Benefits by Cloud Characteristic 
| Cloud Characteristic   | Benefit 
| ---------------------- | --------
| On-Demand Self-Service | Reduces CapEx
| Broad Network Access   | Makes it easier to use different clients and "work-from-home"
| Resource Pooling       | Improves hardware utilization and the return-on-investment 
| Rapid Elasticity       | Allows businesses to meet demand and improve profitability
| Measured Service       | Reduces OpEx is based on the services and capacity used

### Benefits by Cloud Service Model
| Cloud Service Model    | Benefit 
| ---------------------- | --------
| SaaS                   | Reduces both CapEx and OpEx because responsibility for "software and below" is offloaded to the CSP
| PaaS                   | Improves code quality because developers are allowed to focus on writing code instead of hosting it
| IaaS                   | Reduces both CapEx and OpEx because responsibility of the data center is offloaded to the CSP

### Benefits by Cloud Service Deployment Model
| Cloud Service Deployment Model | Benefit
| ------------------------------ | --------
| Public                         | Reduces both CapEx and OpEx 
| Private                        | Allows the business to maintain control of its data
| Community                      | Allows two or more businesses to share resources
| Hybrid                         | Makes it easier to meet both business and regulatory requirements

## Cloud Design
### Business Needs Analysis
A *business needs analysis* is when you identify and analyze a problem that must be solved to achieve a business goal (ex: we need to find a solution to reduce costs and increase profits). 

**Migration Phases**  
1. A business needs analysis is performed 
2. Requirements that are cloud-compatible are labeled
3. Cloud-compatible requirements are mapped to cloud solutions
4. On-prem services are migrated to the cloud
5. IT staff operate cloud services

What are the goals of your business? Why should IT be aligned with them?
* Save time and resources

How do you align IT with the goals of your business?
* Identify business and user requirements before you migrate or deploy
* Develop a Business Requirement Document (BRD)
  * Project overview
  * Project scope
  * Success factors
  * Stakeholder identification
  * Project constraints
  * System functionality
  * User classes
  * Interface requirements
* Conduct usability and security tests

What are some business-focused IT requirements?
* Low costs (e.g., OpEx and CapEx)
* High interoperability with existing data sources, legacy software, and partners
* High compute, storage, and network capacity
* High availability (e.g., through redundancy) 
* High resiliency (does the cloud continue to function when there's an issue?)
* Compliance with regulatory requirements (HIPAA, PII, PCI DSS, etc.)
* Multiple computing environments (e.g., development, staging, production)

What are some user-focused IT requirements?
* Easy-to-use interfaces
* Ubiquitous access (i.e., the system is accessible from almost anywhere) 
* High reliability 
* Fast support response times 

### Capacity Planning
Capacity planning is when an organization measures the utilization of existing services to establish a benchmark for future expansion. Below are some examples:
* If one cabinet can support 1,000 users, two additional cabinets would be needed for the organization to support 3,000. 
* If 5 licenses can support 100 servers, 6 licenses would be needed to support up to 120.





### Baseline
Identify the organization's baseline and verify it can be migrated. A *baseline* describes the version of hardware and/or software currently deployed. 

### Documentation
Verify the organization has documented the relationships and dependencies between their resources. 

## Stakeholders
Identify stakeholders and categorize them by level of domain (e.g., management, operations, IT, and security), influence, and requirements. 

### Gap analysis
Conduct a gap analysis. A gap analysis evaluates whether or not technology is being fully utilized.  

## Cloud Management
[https://aws.amazon.com/compliance/shared-responsibility-model/](https://aws.amazon.com/compliance/shared-responsibility-model/)