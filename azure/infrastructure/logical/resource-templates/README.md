# Resource Templates
A resource template is a file used for [automating](/automation/README.md) the deployment and configuration of one or more resources. It's more like a picture than a recipe. It represents what you want without specifying how to produce it. If an resource template is processed multiple times, ARM will not recreate the resource if it already exists. Also, properties are only modified if a change has been detected. ARM supports two types of resource templates: *ARM templates* and *Bicep templates*. 

## ARM Templates
ARM templates are written in JavaScript Object Notation (JSON) and sometimes kept in a file called `template.json` or `azuredeploy.json`. 

**JSON**  
A JSON document is a collection of key/value pairs. Keys are strings. Values can be any of the types listed below. 
* String
* Number
* List
* Object

### Schema  
Required. Identifies where the JSON schema file for the template can be found. Without it, ARM wouldn't know how to parse the template. 

### Content Version  
Required. Identifies the version of your template. 

### Resources  
Required. Identifies one or more resources to deploy.

### Parameters
Optional. Values provided during execution. Allows you to customize deployments while reusing the same ARM template. No more than 256 parameters can be used in an ARM template. They sometimes kept in a file called `parameters.json` or `azuredeploy.parameters.json`.

```json
"parameters": {
    "foo" : {
        "type" : "",
        "defaultValue": "",
        "allowedValues": [ "" ],
        "minValue": "A",
        "maxValue": "Z",
        "minLength": 1,
        "maxLength": 256,
        "metadata": {
        "description": ""
        }
    }
}
```

### Variables
Optional. Used to simplify expressions elsewhere in the template. 

### Functions
Optional. Used-defined functions used within the template. 

### Outputs
Optional. Values returned after deployment. 

```json
{
    "$schema": "http://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
    "contentVersion": "0.0.1",
    "resources": [
      
    ],
    "parameters": {},
    "variables": {},
    "functions": [],
    "outputs": {}
}
```

## Bicep Templates
Bicep templates are written in Bicep. They're easier to read than ARM templates, modular (i.e., can be separated into different files), and support all ARM versions. When Bicep templates are processed, they're converted to a JSON template before being passed to ARM. 