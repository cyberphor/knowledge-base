# Cloud Resilience

## Fault-Free
Cause > Fault 
  -> Permanent
  -> Transient
  -> Intermittent

Fault
  -> Error
  -> Error -> Failure

Fault Extinguishing Process
1. Detect fault
2. Diagnose the fault
3. Detect defect
4. Remove defect
5. Remove fault

## Fault-Tolerant
Fault-tolerant systems are better than fault-free systems because they require less resources.  

**Fault Tolerance**  
The ability for a system to tolerant a fault. 

### Techniques
Below are fault-tolerant techniques to execute when a fault is detected. 

**Reactive**  
Migrating non-preemptive jobs, replicate tasks, and return the system to a pre-defined restoration point. 

**Proactive**  
* Replicate resources (active, semi-active, passive, semi-passive)
* Load balancing: using a machine to distribute work across resources
* Mitigate configuration drift
* Migrating preemptive jobs
* Self-healing 
* "Barter-based" process scheduling

## Surviable
Surviability is the capability... Surviable systems are better than fault-tolerant systems because they require less resources. 

**Backup Services**  
The goal of a backup service is to guarantee that the system can be reconstructed no matter the magnitude of a failure. 

**Diaster Recovery Metrics**  
Recovery Time Objective
Recovery Point Objective
Mean Time to Recover
Mean Time Between Failures
Availability

## Resilient System