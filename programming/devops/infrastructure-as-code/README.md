# Infrastructure as Code
Infrastructure as Code (IaC) tools are used to automate the provisioning and/or management IT infrastructure.

## Principles
Below are principles of IaC.

**Imperative**  
Text goes here.

**Declarative**  
Text goes here.

**Mutable Infrastructure**  
Mutable infrastructure is when you modify the existing infrastructure. 

**Immutable Infrastructure**  
Immutable infrastructure is when you recreate infrastructure to implement change. 

**Idempotency**    
No matter how many times you apply your configuration, the result is the same. 

## IaC Workflow
1. Developer creates IaC content using
  * Terraform
  * Puppet
  * Chef
2. Developer pushes IaC content to a Version Control System (VCS) 
3. VCS triggers a CI/CD pipeline
4. CI/CD pipeline deploys or modifies infrastructure

## Best Practices
Below are some best practices when developing IaC content. 
* Organize your IaC content into modules 
  * Network module
  * Server module
* Use linting tools to enhance the readability of your IaC content
* Test your IaC content
* Use a Version Control System