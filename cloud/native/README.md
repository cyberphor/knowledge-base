# Cloud-Native Applications
Applications migrated from on-prem to the cloud are "cloud-enabled." Applications designed for the cloud are described as "cloud-native." A cloud-native application has a microservices architecture. It's represented by containers and deployed using CI/CD pipelines. 
* [Design Goals](#design-goals)
* [Application Stack Layers](#application-stack-layers)
* [The 12 Factor Application Methodology](#the-12-factor-application-methodology)

**Microservices Architecture**  
A microservices architecture separates frontend, backend, and datastore components so they can be developed, scaled, and maintained independently. 

**Containers**  
Cloud-native applications use containers because containers make it easy to define, organize, and edit components. 

**CI/CD Pipelines**  
Cloud-native applications are deployed using CI/CD pipelines because CI/CD pipelines make it easy to build and release components. 

## Design Goals
The design of a cloud-native application should achieve the goals described below. 

**Agility**  
Features can be introduced and bugs can be fixed quickly. 

**Scalability**  
Load balancers and horizontal scaling is used to meet the demand of traffic. 

**Resilience**  
Errors are handled gracefully and the application continues to function during a component failure. 

**Availability**   
Access wait times are low. 

**Observability**  
Telemetry is configured and monitored. 

**Automation**  
Human error and the time needed to deliver the application is low. 

**Cost Efficiency**  
Scaling is used to keep OpEx low. 

## Application Stack Layers
A cloud-native application can be viewed as a stack of technology and processes. 

**Infrastructure**  
The Cloud Service Provider's physical resources.  

**Provisioning**  
The IaC tools used to create and manage virtual resources. Terraform is one example. 

**Runtime**  
The compute resource (e.g., virtual machine, container, or serverless function) used to run your application. A Docker host is one example. 

**Orchestration**  
Orchestration tools used to automatically scale and manage your application. Kubernetes is one example. 

**Application**  
The relationships between your microservices. 

**Analytics**  
The tools used to monitor and investigate performance and security issues. 

**Management**  
The people and processes used to operate your application. 

## The 12 Factor Application Methodology
**Reference**  
[https://www.redhat.com/architect/12-factor-app](https://www.redhat.com/architect/12-factor-app)

### 1. Codebase
Deployable application should only have codebase. The codebase should also be tracked in a Version Control System like Git. The environments and versions relating to the application are defined during deployment, not in the code. 

### 2. Dependencies 
Define your dependencies explicitly in a manifest. Don't make assumptions on what system-wide packages are available. Also, use `virtualenv` instead of `pip`. 

### 3. Config
Store your configuration variables in the environment. For example, the credentials you use in the development might be different than what you use in the staging and production environments. Therefore, it would be wise to use environment variables to store this information. Otherwise, there will be an issue with what your code has and what the environment expects. 

### 4. Backing Services
Data stores and APIs should be thought of as "attachable." They will fail and need to be replaced and reattached. Don't design your application as if they will always be available. For example, create and destroy a new SQL connection every time there is a new query. Don't establish a connection when your application starts. 

### 5. Build, Release, Run
Keep the build, release, and run procedures separate so you're not waiting on one phase when you're on another. 
* Build: build the application into an artifact
* Release: add deployment configuration information
* Run: run the app

### 6. Processes
Keep your application stateless. Again, move state (e.g., credentials and cookies) to a "backing service" so its easier to scale when needed. 

### 7. Port Binding
Use port numbers to advertise your application's components instead of an IP address or domain name. As before, this will make it easier to scale. 

### 8. Concurrency
A cloud-native application won't have the control needed to scale at the machine or thread level. Therefore, scale at the process level. Scaling at the process level meanings spinning up multiple copies of your application. 

### 9. Disposability
Ensure components are able to start fast as well as gracefully shutdown when there's a failure. 

### 10. Environment Parity
Keep your environments (development, staging, and production) consistent to mitigate conflicts. 

### 11. Logs
View logs as a continuous stream of events. 

### 12. Admin Processes
Admin processes include REPL shells and database migration scripts. Even though they're used in ad hoc manner, they must be treated the same as your application. They should be bundled with your application and be included in your Build, Release, and Run procedures. 
