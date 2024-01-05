# Azure Recovery Services
Azure Recovery Services is used for storing backup and recovery points. It also allows you to replicate, failover, and failback (return from a failover) to on-prem and/or Azure-based virtual machines.

**Best Practices**  
Separate your resources and backup/recovery values in different regions (e.g., East US and West US). If there is a disruption in one region, you will still have access to either the original resource or a backup of the original resource.

## Replication Process
The following occurs when a virtual machine is replicated. 
1. A Site Recovery Mobility service agent is installed on the virtual machine. 
2. The agent registers the virtual machine with your Site Recovery service. 
3. The virtual machine is continously replicated (e.g., disk writes are transferred to the "caching" storage account within the source location).
4. Your Site Recovery service sends data from the "caching" storage account to the "target" storage account. 
5. Recovery points are generated (crash-consistent recovery points: every 5 minutes, app-consistent recovery points: according to the replication policy).

## Failover Phases
Performing a failover using the Azure Site Recovery is a two-phase process. 

**Failover**  
The failover phase creates and brings up an Azure VM using the selected recovery point.

**Commit**  
After the new VM is created with the recovery point, you want to test and verify the VM works. You will then decide whether you want to commit the failover to the selected recovery point, or select a different recovery point for the commit. The commit operation finishes up the whole failover process and deletes all the recovery points available with the service.

## Azure Traffic Manager
**Availability Zone**  
An availability zone represents a set of resources in a region. 

**Scenarios**  
| Load Balancing Scenario  | Level of Redundancy  |
| ------------------------ | -------------------- |
| Between virtual machines | Machine              |
| Between zones            | Zone (rack)          |
| Between regions          | Region (data center) | 