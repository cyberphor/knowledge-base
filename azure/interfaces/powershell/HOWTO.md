# Azure PowerShell

## Create and Configure a Managed Disk
**Step 1.** Login to Azure.
```powershell
Connect-AzAccount
```

**Step 2** Create a resource group. 
```powershell
$RESOURCE_GROUP = "managedDiskRg"
$LOCATION = "eastus"
New-AzResourceGroup -Name $RESOURCE_GROUP -Location $LOCATION
```

**Step 3.** Create a managed disk. 
```powershell
$DISK = "managedDisk01"
$DISK_CONFIG = New-AzDiskConfig -Location $LOCATION -CreateOption "Empty" -DiskSizeGB 32 -Sku "Standard_LRS"
New-AzDisk -ResourceGroupName $RESOURCE_GROUP -DiskName $DISK -Location $LOCATION
```

**Step 4.** Change the size of the managed disk. 
```powershell
New-AzDiskUpdateConfig -DiskSizeGB 64 |
Update-AzDisk -ResourceGroupName $RESOURCE_GROUP -DiskName $DISK
```

**Step 5.** Change the performance SKU of the managed disk. 
```powershell
New-AzDiskUpdateConfig -Sku "Premium_LRS" |
Update-AzDisk -ResourceGroupName $RESOURCE_GROUP -DiskName $DISK
```

**Step 6.** Delete the resource group. 