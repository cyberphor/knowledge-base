# Continuous Deployment
Continuous Deployment is a process used to release and automatically deploy software into the production environment. It prioritizes speed and therefore requires a mature DevOps capability. 

### Deployment Pipelines
**Artifacts**

## Artifacts
* Source code
* Version Control System
* Automated build artifacts
* Test reports
* Infrastructure-as-Code (IaC) files
* Container images

## Deployment Strategies
**Round-Robin**  
Text goes here.

**Blue/Green**  
Blue/Green deployments are when there is two environments. One is production (aka "Blue"), the other one is staging (aka "Green"). After the the staging environment has been tested for quality and acceptance, it becomes the production environment. 
* Step 1: green is new, blue is now
* Step 2: green is tested and accepted
* Step 3: green becomes the new standard for both environments

**Canary**  
Canary deployments are when users are migrated to a new release in small groups. 

## Releases
### Types of Issues Before and After a Release
**Coding Issues**  
Examples of coding issues are logic errors, unexpected edge cases, and deprecated libraries.

**Infrastructure Issues**  
An example of an infrastructure issue is the horizontal scaling of compute, storage, and/or network resources.

**Configuration Issues**  
Inconsistent configurations cause unexpected behavior. 

**Integration Issues**  
Examples of integration issues are incompatibility and poor connectivity.

**Performance Issues**  
Examples of performance issues are poor system response time and resource utilization.

**Security Issues**  
Examples of security issues are the loss of information confidentiality and information integrity. 

### Mitigating Issues
Below is a list of strategies for mitigating issues before and after a release. 

**Collaboration**  
Establish incident response procedures and clear communication channels between teams first.

**CI/CD**  
Promote small updates over big ones. Small updates take less time to debug and therefore allow you to respond to issues faster. 

**Testing**  
Perform Unit Testing, Integration Testing, User Acceptance Testing, and Code Reviews. 

**Automation**  
Automate the build, test, and deploy phases of your SDLC. 

**Monitoring**  
Track system response time, the utilization of hardware, errors, user behavior, and application logs.
