# Cloud Security

## Security by Cloud Service Model
Text goes here. 

## Cloud Access Security Broker  
Text goes here. 

## Shared Responsibility Model  
The Shared Responsibility Model (SRM) is a sustainment and security policy. It separates responsibilities between CSPs and organizations based on cloud service types (e.g., IaaS, PaaS, and SaaS). CSPs are responsible for security *of* the cloud, customers are responsible for security *in* the cloud. 
* Customers are responsible for their (1) clients, (2) identity management, and (3) data.
* CSPs are responsible for (1) data centers as well as the capital and operations required to run them.

![shared-responsibility-model.png](/cloud/shared-responsibility-model.png)

## Risk Management
Risk management is the process of designing, building, sustaining, and modifying policies and systems to protect asset Confidentiality, Integrity, and Availability from risk that can be avoided, mitigated, or transferred. It requires organizations to define their risk acceptance level and be adaptable. Preserving the organization is more important than preserving an asset. 

## Redundancy
Redundancy is when there is more than one cloud resource available. 

## High Availability
Availability represents how long a cloud service can be offline. It's a measurement of time and described in 9s. For example, if a cloud service must be online 99.999% of time, it can only be offline for 5 minutes all year. 

## Disaster Recovery
Disaster recovery is the process of restoring cloud services in the event of a failure (the size of the "disaster" is irrelevant). 

### Recovery Point Objectives
**Recovery Point Objective**  
The Recovery Point Objective (RPO) is the time between the most recent backup and the disaster. It helps describe how much data can be lost (ex: "I can afford to reboot this VM and lose data because my RPO is 72 hours"). 

**Recovery Time Objective**  
The Recovery Time Objective (RTO) is the time between a disaster and when the affected cloud service needs to be back online (ex: "we have 6 hours to meet our RTO and fix this").

### Risk Assessment
The first step of risk management if conducting a risk assessment. 

#### The FAIR Framework
The Factor Analysis of Information Risk (FAIR) framework is a risk assessment process used to measure the impact an asset compromise would have on an organization. 
| Loss Category         | Description                                                                     | 
| --------------------- | ------------------------------------------------------------------------------- | 
| Productivity          | The ability to provide services                                                 | 
| Response              | The capability to mitigate loss                                                 | 
| Replacement           | The fix value of a compromised asset                                            | 
| Fines and Judgements  | The legal/regulatory cost sustained                                             | 
| Competitive Advantage | The ability for the organization to differentiate itself from other competitors | 
| Reputation            | The damage sustained to the organization's image                                | 

## Threats
The Cloud Security Alliance (CSA) is a group of cloud security experts who routinely publish reports on cloud security threats. 

### Data Breaches
A data breach is when information is exposed without authorization. Events where the information was not accessed after it was exposed is still a data breach.

### Misconfiguration and Inadequate Change Control
Change control is the process of authorizing and documenting change. It is designed to bake-in resilience (i.e., the ability to withstand internal and/or external threats). 

### Lack of Cloud Security Architecture and Strategy
Organizations must be cognizant of their role in the [SRM](/cloud/security/README.md#shared-responsibility-model).

### Insufficient Identity, Credential, Access, and Key Management
Use Multi-Factor Authentication (MFA) and protect your identity management systems. 
 
### Account Hijacking
Account hijacking is when someone gains unauthorized to an account (e.g., through phishing). 

### Insider Threat
An insider threat is the potential for someone who has access to cause harm to their organization. 

### Insecure Interfaces and APIs
Use bastion hosts to access and manage your cloud-based resources. 

### Weak Control Plane
CSA believes the lack of visibility into [SDN](/cloud/networking/README.md#software-defined-networking) Control Plane activity is a threat to cloud security. 

### Metastructure and Applistructure Failures
**Metastructure**  
Metastructure is the interface between infrastructure (e.g., virtual machine) and the resources it supports. 

**Applistructure**  
Applistructure is represented by application components (e.g., UIs, APIs, and databases) and the and the services used to manage them (e.g., web server). 

### Limited Cloud Usage Visibility
Shadow IT in the cloud is a threat to security. Organizations must be aware of what cloud resources they have and how they're being used. 

### Abuse and Nefarious Use of Cloud Services
Threat actors have been observed using the cloud to prepare and execute operations (e.g., commmand and control, CAPTCHA cracking, and building rainbow tables).

## Defense in Depth
Text goes here. 

## Regulatory Compliance
Text goes here.