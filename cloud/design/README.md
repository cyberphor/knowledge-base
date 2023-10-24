# Cloud Design
Cloud architects design clouds based on decisions relating to the topics below. 

## Cloud Service Model
The decision to pick one [Cloud Service Model](/cloud/README.md#service-models) (i.e., Public, Private, Community, or Hybrid) over the other is based on security. 

## Cloud Service Deployment Model
The decision to implement one [Cloud Service Deployment Model](/cloud/README.md#service-deployment-models) (i.e., SaaS, PaaS, and IaaS) over the other depends on how much responsibility a customer wants to outsource to a CSP for a given service. For example, your organization may wish to use SaaS for email but conduct malware analysis using IaaS. 

## Cloud Elasticity
Cloud elasticity requirements are based on the output of [capacity planning](/cloud/scaling/README.md#capacity-planning). 

**Elasticity**  
Elasticity is the ability to [scale](/cloud/scaling/README.md) to meet demand. 

**Scale-Up**  
Scaling-up is the process of upgrading existing resources within a cloud service (e.g., one small VM becomes a medium VM). 

**Scale-Out**
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