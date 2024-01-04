# Azure Compute Services
Azure's offerings include the compute services below. 
* [Virtual Machines](virtual-machines/README.md)
* [Containers](containers/README.md)
* [Serverless Functions](functions/README.md)
* [Maintenance Events](#maintenance-events)

## Maintenance Events
Azure define outage categories: Unplanned Hardware Maintenance, Unexpected Downtime, and Planned Maintenance. 

### Unplanned Hardware Maintenance  
Unplanned hardware maintenance is when Azure predicts hardware you're using is about to fail. In response, a notification is sent to Azure's "Live Migration" service. This service will suspend your resources while they are moved to safer hardware. 

### Unexpected Downtime  
Unexpected downtime is when hardware failure was not predicted. 

### Planned Maintenance  
Planned maintenance is when Microsoft updates Azure. 
