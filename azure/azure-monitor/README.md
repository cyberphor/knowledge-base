# Azure Monitor
Azure Monitor is a cloud monitoring service. It is used to collect and analyze real-time data of cloud-based apps and/or individual resources.  

**The Microsoft Insights Resource Provider**  
The `microsoft.insights` resource provider allows you to generate, collect, and manage the following:
* Metrics
* Logs
* Autoscaling
* Alerts

## Autoscale Settings
**How to List Autoscale Settings for a Specific Resource Group**
```bash
export RESOURCE_GROUP="web_app_monitor"
az monitor autoscale list \
  --resource-group "${RESOURCE_GROUP}" 
```

## Insights
**Azure Application Insights**  
The Azure Application Insights (AAI) service is used for Application Performance Management and detecting performance anomalies. You need an instance of AAI to monitor your app. 

**Availability Tests**  
Availability tests are used to check if an app is responding as expected. After an availability test is configured, AAI will send web requests to your app from around the world. AAI will notify you if the app is responding slowly or not at all. 
* Classic Test: A "Classic Test" with default settings will test the availability of your web app from five different locations every 5 minutes (the standard of success is the receipt of a HTTP response status 200 within 120 seconds). 

**How to List Azure Monitor Action Groups**  
```bash
# set your subscription
export SUBSCRIPTION_NAME="Personal"
az account set \
  --subscription "${SUBSCRIPTION_NAME}"

# list action groups
az monitor action-group list
```