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