# History

## Timeline
People transition from owning a product themselves to using a service when the service becomes cheaper and more reliable. It is cheaper than the total cost of owning and sustaining the product itself. The service is reliable enough to not have to operate the product oneself. 

**1950 - 1966**  
Compute resources had to be shared because they were expensive. 
* Herb Grosh suggested 15 data centers should be enough compute for the world
* John McCarthy proposed the idea of compute being public utility
* Douglas Parkhill described what we now call “cloud computing” in “The Challenge of the Computer Utility”

**1969 - 1993**  
Compute resources became accessible at the business and household level. 
* ARPANET and UNIX are developed
* Internet-age began
* Browsers became popular thanks to the World Wide Web

**1995 - 2000**
* Amazon and eBay launched
* One of the first Software-as-a-Service organizations, Salesforce, launched
* The “dot com” bubble burst, forcing organizations to begin seeking for ways to improve their IT utilization

**2006 - 2007**
* Amazon launches AWS, providing storage and compute via S3 and EC2 respectively
* Salesforce launches force.com, a cloud computing platform

### Co-Location Services
Co-location services allow small and/or medium-sized organizations to lease rack space, power, cooling, and network connectivity in a shared data center. Co-location services are cheaper to sustain than an in-house data center. They are primarily used within the business computing domain. 

### Parallel Processing
Parallel processing uses multiple computers that perform as one to perform large scale and/or high precision calculations. Computers used in parallel processing of similar make/model. Parallel processing is used within the scientific computing domain. 
* Analogy: a group of Egyptians moving blocks to build a pyramid. 

### Distributed Computing 
Distributed computing uses multiple computers that parse and execute the subtasks of a solution to a problem. Distributed computing is used within the scientific computing domain. 
* Analogy: piranhas eating a bigger fish. 

## Applications at Global-Scale
Organizations began expecting their IT solutions to be more accessible, reliable, and responsive during the advent of Internet-connectivity, the World Wide Web, and wireless communication. 

### Characteristics of Applications at Global-Scale
Applications at the global-scale have the following characteristics:
* Ubiquitous: accessible anywhere
* Highly available: always up; measured in “the number of nines” over a year
* Three nines (99.90%): unavailable for 9 hours in the year
* Fast
* Scalable: can handle varying loads over long and short periods of time
* Cheap: specifically the service-to-admin ratio
* Interoperable: can reuse and support standard mechanisms for importing/exporting data

### Examples of Applications at Global-Scale
Examples of applications at the global-scale are:
* Search engines: crawls, stores, indexes, and searches large datasets
* Social media: allows people to build communities of similar interests
* E-commerce: allows organizations and people to sell and purchase items
* Streaming media: allows people to watch videos
* Real-time communication: allows people to chat, call, and video each other
* Collaboration software: allows people to work together on documents and projects
* CRM software: allows organizations to track, analyze, and predict business growth
* BI software: allows organizations to identify opportunities to improve business growth

### Early Solutions to Making Applications at Global-Scale
Examples of solutions used to make applications at global-scale (before the cloud) are:

**Mirroring content** (con: inconsistency)  
* Storing copies of data around the world 
* Content Delivery Networks (CDNs) are caches of content distributed globally

**Shared Hosting Services** (cons: capacity and security)  
* Leasing a server to multiple tenants 
* An over-provision physical server is when the aggregate capacity of all tenants is greater than the actual capacity of the server

**Virtual Private Servers (VPS)** (con: scalability)  
* Using a VPS is similar to “shared hosting” albeit leasing a Virtual Machine (VM)

**Warehouse-Scale Computer (WSC)** (con: cost)  
* A single data center within a group of globally-distributed data centers managed by one organization
* Allowed organizations like Google and Amazon to abstract apps and data while maintaining ownership

**Grid Computing** (con: complexity)  
* Pooling compute resources from different institutions and geographical locations to pursue a common goal
* Required organizations to join a “virtual organization” and dedicating a specific set of resources using well-defined rules
* Involved open standards (compared to proprietary protocols used by CSPs today)

## Origin
Cloud computing evolved from the technologies and techniques below. 

### Mainframes
A mainframe provided compute and storage resources. People shared and connected to them over serial connections using terminals.

### Personal Computers (PCs)
Personal computers were cheaper than mainframes but created issues in effectively sharing software and data (everything was stored locally).  

### Local Area Networks (LANs)
LANs standardized how PCs connected and shared software and data, leading to the development of client-server architectures. 

### The Internet 
The adoption of the Internet forced organizations and people to upgrade their transmission methods (e.g., transition from dial-up to fiber optic) and improve their network bandwidth. 

### World Wide Web 
Web technologies lead to multi-tier architecture, or the separation of an application’s presentation, logic, and storage layers. Multi-tier architecture motivated organizations to separate these layers between physical servers. Yet, this caused poor utilization. 

### Virtualization
Virtualization allowed organizations to achieve a multi-tier architecture without the need for multiple physical servers (thereby improving utilization).

### Grid Computing
Grid computing introduced resource-management tools like schedulers and load balancers. 

### The Economic Model of Utility Computing
The model or technique of using a third-party to host your IT solution (like a utility) became cost effective. 
