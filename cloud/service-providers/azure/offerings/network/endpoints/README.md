# Azure Endpoints

## Public Endpoint
A Public Endpoint is a an Azure network interface with a public IP address. Public must leave the VNet to access Azure services. 

## Private Endpoint
A Private Endpoint is a an Azure network interface with a private IP address. Private Endpoint traffic must leave the VNet to access Azure services. 

### Private Links  
A Private Link is a Private Endpoint that uses the Azure backbone to access Azure services. It requires an IP address from your VNet. 

### Service Endpoints  
A Service Endpoint is when an Azure service has been configured to accept connects from your VNet. They're useful when more than one person or resource (e.g., virtual machine) needs to access an Azure service. 