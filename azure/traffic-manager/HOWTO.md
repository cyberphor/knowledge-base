# Azure Traffic Manager

## Implement Load Balancing Using Azure Traffic Manager
**Step 1.** Define and load your environment variables. 
```bash
code task4.env
```
```bash
# east
export LOCATION="eastus"
export RESOURCE_GROUP1=""
export VM_NAME1=""
export VM_IMAGE1="Ubuntu2204"
export VM_TAGS1="project=bcdr"
export VM_AUTH_TYPE1="password"
export VM_ADMIN_USER1=""
export VM_ADMIN_PASSWORD1=""
export VM_PORT1=""

# west
export LOCATION2="westus"
export RESOURCE_GROUP2=""
export VM_NAME2=""
export VM_IMAGE2="Ubuntu2204"
export VM_TAGS2="project=bcdr"
export VM_AUTH_TYPE2="password"
export VM_ADMIN_USER2=""
export VM_ADMIN_PASSWORD2=""
export VM_PORT2=""
```
```bash
source task4.env
```

**Step 2.** Create two resource groups. 
```bash
# east
az group create \
  --name "${RESOURCE_GROUP1}" \
  --location "${LOCATION2}"
```
```bash
# west
az group create \
  --name "${RESOURCE_GROUP2}" \
  --location "${LOCATION2}"
```

**Step 3.** Create two virtual machines.
```bash
# east
az vm create \
  --resource-group "${RESOURCE_GROUP1}" \
  --name "${VM_NAME1}" \
  --image "${VM_IMAGE1}" \
  --tags "${VM_TAGS1}" \
  --authentication-type "${VM_AUTH_TYPE1}" \
  --admin-user "${VM_ADMIN_USER1}" \
  --admin-password "${VM_ADMIN_PASSWORD1}"
```
```bash
# west
az vm create \
  --resource-group "${RESOURCE_GROUP2}" \
  --name "${VM_NAME2}" \
  --image "${VM_IMAGE2}" \
  --tags "${VM_TAGS2}" \
  --authentication-type "${VM_AUTH_TYPE2}" \
  --admin-user "${VM_ADMIN_USER2}" \
  --admin-password "${VM_ADMIN_PASSWORD2}"
```

**Step 4.** Open a web server port on both virtual machines. 
```bash
# east
az vm open-port \
  --resource-group "${RESOURCE_GROUP1}" \
  --name "${VM_NAME1}" \
  --port "${VM_PORT1}"
```
```bash
# west
az vm open-port \
  --resource-group "${RESOURCE_GROUP2}" \
  --name "${VM_NAME2}" \
  --port "${VM_PORT2}"
```

**Step 5.** Login to both virtual machines and install Apache. 
```bash
# east
ssh azureuser@$VM_IP1
sudo apt update
sudo apt -y install apache2
echo "Hello from East US!" | sudo tee /var/www/html/index.html
```
```bash
# west
ssh azureuser@$VM_IP2
sudo apt update
sudo apt -y install apache2
echo "Hello from West US!" | sudo tee /var/www/html/index.html
```

**Step 6.** Configure a DNS name for both virtual machine. 
* Resource groups > (resource group 1) > (public ip 1) > Settings > Configuration
  * DNS name label: `vm1week09cyberphor`
* Resource groups > (resource group 2) > (public ip 2) > Settings > Configuration
  * DNS name label: `vm2week09cyberphor`

**Step 7.** Create a traffic manager profile. 
* Search for "traffic manager profiles" > Create an Azure Traffic Manager profile
  * Name: "trafficmanagerweek09cyberphor"
  * Routing method: "Performance"
  * Subscription: (your subscription)
  * Resource group: (resource group 1; e.g., `p8t4_eastus`)

**Step 8.** Add endpoints to the traffic manager profile. 
* Resource groups > (resource group 1) > Traffic manager profile
  * Settings > Endpoints
    * (add an endpoint for virtual machine 1)
      * Type: "Azure endpoint"
      * Name: (e.g., `eastus`)
      * Enabled: (checked)
      * Target resource type: "Public IP address"
      * Public IP address: (e.g., IP address of VM 1)
    * (add an endpoint for virtual machine 2)
      * Type: "Azure endpoint"
      * Name: (e.g., `westus`)
      * Enabled: (checked)
      * Target resource type: "Public IP address"
      * Public IP address: (e.g., IP address of VM 2)

**Step 9.** Test your traffic manager profile by turning-off the first virtual machine. 
* Resource groups > (resource group 1) > (virtual machine 1)
  * Stop
    * Do you want to reserve the Public IP address? (checked)

**Step 10.** Verify the traffic manager is aware of the offline endpoint.
* Resource groups > (resource group 1) > Traffic manager profile > Overview
  * Confirm the "Monitor Status" of the first virtual machine is "Degraded"