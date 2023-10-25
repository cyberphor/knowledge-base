# Risk Management

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