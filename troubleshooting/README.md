# Troubleshooting
* [Troubleshooting Network Issues](#troubleshooting-methodology)
* [Troubleshooting System Issues](#troubleshooting-system-issues)
* [Troubleshooting Security Issues](#troubleshooting-security-issues)

## Troubleshooting Methodology
1. Identify the problem
  * How do we know when there's a problem? Someone tells you or it's detected by monitoring software
  * Identify what changed
2. Determine the scope 
  * Pivot between data sources (e.g., users and logs) to collect evidence
  * Bridge the gap between perception and reality (i.e., ask relevant questions)
  * What type of problem is this (e.g., network, system, app, or data)?
  * How many people, machines, and/or locations are affected by this problem?
3. Establish a theory of why it happened
  * Start simple
  * Identify common elements between those affected
4. Test the theory
  * If your theory is wrong, do more research using the information you have and develop a new theory
5. Develop a Course of Action (COA)
  * Make sure your COA is compliant with existing policy and procedures
  * Identify the steps required before you do anything
  * Notify stakeholders if something is being taken offline
6. Execute your COA 
  * Do not deviate from the plan
  * Make one change at a time
  * If a change didn't help, reverse it and try another COA
7. Verify system functionality
  * Make sure the system is performing as expected (what does the Service Level Agreement require?)
8. Implement preventive measures
  * Make sure this doesn't happen again (e.g., configure RAID and backup the system)
9. Perform a Root Cause Analysis (RCA)
  * After the smoke as cleared, determine what allowed this to happen
  * ex: why was there a misconfiguration in the first place?
10. Document all findings, actions, and outcomes
  * Document while you're troubleshooting: symptoms, research, what didn't work, what worked, etc. 

## Troubleshooting Network Issues
Connectivity
* IP address configurations
* NSG assignments
* Inbound ACL rules
* Inherited ACL rules

VPC connectivity
* Peering between networks within a VPC
* NSG assignments
* DNS

Load balancing
* HTTP client headers are readable
* HTTP client headers are compatible 

VLANs
* Use GENEVE to address compatibility issues between VXLAN, NVGRE, and STT segments

QoS
* Network congestion impacting all packets

Timing 
* Certificates used for Network Time Security
* Virtual machine extensions (e.g., VirtualBox Guest Additions)

## Troubleshooting System Issues
Text goes here. 

## Troubleshooting Security Issues
Text goes here.
