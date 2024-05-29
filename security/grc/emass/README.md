# Enterprise Mission Assurance Support Service (eMASS)
eMASS is a Software-as-a-Service offering used to collect and manage cyber security data in support of meeting Risk Management Framework, DODI 8500.01, DODI 8510.01 requirements. 

DODI 8510.01 requires the DOD to use RMF as its cyber security authorization process for all applications, enclaves, and platform services. 

The RMF Knowledge Service is used to manage and standardize changes to the DOD's body of RMF knowledge.

Every organization establishes their own hierarchy using buckets of system and user roles within their eMASS instance. 

Enterprise level: AOs, SCAs
Organizational level: eMASS admins
System level: System Owners, ISSM, ISSO

You must be assigned a user role by an eMASS admin before you are assigned to a system. You can't conduct Authorize & Assess (A&A) activities until you are assigned to a system. 

A system in eMASS is technology that was required to complete the A&A or Assess-only process. 

A package is information within a workflow in the eMASS Package module. 

Security controls protect the CIA of information processed, stored, and transmitted by an information system. 

Control Correlation Identifiers (CCIs) are the "decomposition of a NIST Security Control into a single, actionable, measurable statement." Each CCI has an Assessment Procedure (AP). CCIs and APs are used interchangeably in eMASS. 

Compliance status..

Artifact is evidence (text or reference) that is submitted as a response to a question. 

eMASS has functions to support every step of RMF. For example, the Assets module can consume output of ACAS, HBSS Policy Auditor, DISA STIG viewer, and SCAP Compliance Checker and map results to Controls for Continuous Monitoring. 

### Workflows  
**Step 1.** System Owner registers an information system in eMASS. They categorize and tailor the system baseline and submit the Package Approval Chain (PAC) to have the RMF Security Plan approved. 

**Step 2.** The Control Approval Chain coordinates to validate security controls, manage the POA&M, artifacts, and scans.

**Step 4.** The "first role of the PAC" submits a snapshot of the system's security posture (aka "package") to the PAC for A&A. 

**Step 5.** Continous Monitoring is performed.