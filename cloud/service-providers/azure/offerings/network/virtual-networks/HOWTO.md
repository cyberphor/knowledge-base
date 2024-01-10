# Azure Virtual Networks
* [Implement Inter-Site Connectivity](#implement-inter-site-connectivity)

## Implement Inter-Site Connectivity
* [Create Three VNets](#create-three-vnets)
* [Configure VNet Peering](#configure-vnet-peering)

### Create Three VNets
**Step 1.** Login to the Azure Cloud Shell and select a PowerShell environment. 

**Step 2.** Upload ARM templates for creating a VNet (e.g., `vnet-template.json` and `vnet-template-parameters.json`). 

**Step 3.** Create the VNets using the ARM templates you uploaded. This scenario assumes the templates define two VNets in the first region (e.g., "East US") and a third in the second region (e.g., `westus`). 
```powershell
$RESOURCE_GROUP_NAME = "myResourceGroup"
$REGION_1 = "eastus"
$REGION_2 = "westus"

New-AzResourceGroupDeployment `
  -ResourceGroupName $RESOURCE_GROUP_NAME `
  -TemplateFile vnet-template.json `
  -TemplateParameterFile vnet-template-parameters.json `
  -location1 $REGION_1
  -location2 $REGION_2
```

### Configure VNet Peering
**Step 1.** Login to the Azure Portal. 

**Step 2.** Search for and select "virtual networks."

**Step 3.** Click the first VNet (e.g., "VNet1") in the first region (e.g., "East US") and then, click "Settings > Peerings."

**Step 4.** Click "Add" and enter the information required for a peering link. 
* This virtual network
  * Peering link name: `vnet1-to-vnet2`
  * Traffic forwarded from remote virtual network: "Block..."
* Remote virtual network
  * Peering link name: `vnet2-to-vnet1`
  * Virtual network: `vnet2`
  * Traffic forwarded from remote virtual network: "Block..."

**Step 5.** Click "Add" again and enter the information required for a peering link. 
* This virtual network
  * Peering link name: `vnet1-to-vnet3`
  * Traffic forwarded from remote virtual network: "Block..."
* Remote virtual network
  * Peering link name: `vnet3-to-vnet1`
  * Virtual network: `vnet3`
  * Traffic forwarded from remote virtual network: "Block..."

**Step 6.** Click the second VNet (e.g., "VNet2") in the first region (e.g., "East US") and then, click "Settings > Peerings."

**Step 7.** Click "Add" and enter the information required for a peering link. 
* This virtual network
  * Peering link name: `vnet1-to-vnet2`
  * Traffic forwarded from remote virtual network: "Block..."
* Remote virtual network
  * Peering link name: `vnet2-to-vnet1`
  * Virtual network: `vnet2`
  * Traffic forwarded from remote virtual network: "Block..."

**Step 8.** Click "Add" again and enter the information required for a peering link. 
* This virtual network
  * Peering link name: `vnet1-to-vnet3`
  * Traffic forwarded from remote virtual network: "Block..."
* Remote virtual network
  * Peering link name: `vnet3-to-vnet1`
  * Virtual network: `vnet3`
  * Traffic forwarded from remote virtual network: "Block..."

## Configure a Network Virtual Appliance
**Step 1.** Define your variables
```bash
export RESOURCE_GROUP="cybersecurity"
export LOCATION="eastus"
export VM_NAME="VM1"
export VM_SIZE="Standard_B1ls"
export VM_IMAGE="Ubuntu2204"
export VM_AUTH_TYPE="ssh"
export VM_ADMIN_USER="cyberphor"
export SUBNET="dmz"
```

**Step 2.** Create a resource group.
```bash
az group create \
  --name "${RESOURCE_GROUP}" \
  --location "${LOCATION}"
```

**Step 3.** Create a VNet. 

**Step 4.** Create a subnet within the VNet. 

**Step 5.** Create a virtual machine.
```bash
az vm create \
  --resource-group "${RESOURCE_GROUP}" \
  --name "${VM_NAME}" \
  --size "${VM_SIZE}" \
  --image "${VM_IMAGE}" \
  --subnet "${SUBNET}" \
  --authentication-type "${VM_AUTH_TYPE}" \
  --admin-user "${VM_ADMIN_USER}" \
  --generate-ssh-keys \
  --tags "${VM_TAGS}" 
```

**Step 6.** Save the ID of the virtual machine's network interface to a variable. 
```bash
NIC_ID=$(az vm nic list \
  --resource-group "${RESOURCE_GROUP}" \
  --vm-name "${VM_NAME}" \
  --query "[].{id:id}" \
  --output tsv
)
```

**Step 7.** Save the name of the virtual machine's network interface to a variable. 
```bash
NIC_NAME=$(az vm nic show \
  --resource-group "${RESOURCE_GROUP}" \
  --vm-name "${VM_NAME}" \
  --nic $NIC_ID \
  --query "{name:name}" \
  --output tsv
)
```

**Step 8.** Configure the virtual machine's network interface to allow IP forwarding. 
```bash
az network nic update --name $NIC_NAME \
  --resource-group "${RESOURCE_GROUP}" \
  --ip-forwarding true
```

**Step 9.** Save the IP address of the virtual machine to a variable. 
```bash
VM_IP=$(az vm list-ip-addresses \
  --resource-group "${RESOURCE_GROUP}" \
  --name "${VM_NAME}" \
  --query "[].virtualMachine.network.publicIpAddresses[*].ipAddress" \
  --output tsv
)
```

**Step 10.** SSH into the virtual machine and enable IP forwarding. 
```bash
ssh -t -o StrictHostKeyChecking=no $VM_ADMIN_USER@$VM_IP 'sudo sysctl -w net.ipv4.ip_forward=1; exit;'
```

**Step 11.** Implement User-Defined Routes so other virtual machines use the Network Virtual Appliance as the "next hop."

![nva-deployment.png](nva-deployment.png)