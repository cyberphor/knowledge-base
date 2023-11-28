# Azure PowerShell

## Install the Az PowerShell Module
```powershell
Install-Module -Name "Az" -Scope CurrentUser -Repository "PSGallery"
```

## Prepare to Use Azure PowerShell
**Step 1.** Login to Azure.
```powershell
Connect-AzAccount
```

**Step 2.** Set your subscription.
```powershell
Set-AzContext -Subscription "Personal"
```

## Create and Configure a Managed Disk
**Step 1.** Create a resource group. 
```powershell
$RESOURCE_GROUP = "managedDiskRg"
$LOCATION = "eastus"
```
```powershell
New-AzResourceGroup -Name $RESOURCE_GROUP -Location $LOCATION
```

**Step 2.** Create the managed disk. 
```powershell
$DISK = "managedDisk01"
```
```powershell
$DISK_CONFIG = New-AzDiskConfig -Location $LOCATION -CreateOption "Empty" -DiskSizeGB 32 -Sku "Standard_LRS"
```
```powershell
New-AzDisk -ResourceGroupName $RESOURCE_GROUP -DiskName $DISK -Location $LOCATION
```

**Step 3.** Change the size of the managed disk. 
```powershell
New-AzDiskUpdateConfig -DiskSizeGB 64 |
Update-AzDisk -ResourceGroupName $RESOURCE_GROUP -DiskName $DISK
```

**Step 4.** Change the performance SKU of the managed disk. 
```powershell
New-AzDiskUpdateConfig -Sku "Premium_LRS" |
Update-AzDisk -ResourceGroupName $RESOURCE_GROUP -DiskName $DISK
```

**Step 5.** Delete the resource group. 
```powershell
Remove-AzResourceGroup -Name $RESOURCE_GROUP
``` 

## Create a Virtual Machine
**Step 1.** Define your environment variables. 
```powershell
$RESOURCE_GROUP = "learn-f121ff09-7cb0-44a9-87d2-1616fbcd5e00"
$LOCATION = "eastus"
$VM_NAME = "VM01"
$VM_SIZE = "Standard_D2s_v3"
$VM_IMAGE = "Canonical:0001-com-ubuntu-server-focal:20_04-lts:latest"
$VM_ADMIN = "victor.fernandez.wa"
$VM_CREDENTIAL = Get-Credential -User $VM_ADMIN
$VM_IPCONFIG = $VM_NAME + "_ipconfig"
$VM_PORTS = "22"
```

**Step 2.** Create a resource group. 
```powershell
New-AzResourceGroup -Name $RESOURCE_GROUP -Location $LOCATION
```

**Step 3.** Create the virtual machine.
```powershell
New-AzVm `
  -ResourceGroupName $RESOURCE_GROUP `
  -Location $LOCATION `
  -Name $VM_NAME `
  -Size $VM_SIZE `
  -Image $VM_IMAGE `
  -Credential $VM_CREDENTIAL `
  -PublicIpAddressName VM_IPCONFIG `
  -OpenPorts $VM_PORTS 
```

**Step 4.** Get the virtual machine.
```powershell
$VM = Get-AzVM -Name $VM_NAME -ResourceGroupName $RESOURCE_GROUP
```

**Step 4.** Stop the virtual machine.
```powershell
Stop-AzVM -Name -ResourceGroupName $VM.ResourceGroupName -Name $VM.Name 
```

**Step 5.** Delete the virtual machine.
```powershell
Remove-AzVM -ResourceGroupName $VM.ResourceGroupName -Name $VM.Name 
```

**Step 6.** Delete the resource group. 
```powershell
Remove-AzResourceGroup -Name $RESOURCE_GROUP
```