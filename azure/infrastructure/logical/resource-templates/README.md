# Resource Templates
A resource template is a file used to define one or more resources to deploy. ARM supports two types of resource templates: *ARM templates* and *Bicep templates*. 

## ARM Templates
ARM templates are written in JSON and used to define [Infrastructure-as-Code](/automation/infrastructure-as-code/README.md). 


* They allow you to automate tasks and improve the speed of deployment
* They allow you to define your Infrastructure-as-Code and improve consistency
* They create resources in the correct order

* They use a declarative syntax
* They are modular (i.e., can be separated into different files)
* They are extendable (i.e., you can add PowerShell scripts to your templates)

## Bicep Templates
Bicep templates provide the following benefits. 
* They are easier to read than ARM templates (i.e., JSON)
* They support all resource types and ARM versions
