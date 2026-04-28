# Variables
$ResourceGroupName ="rg-az-neu-dev"
$VMName            = "vm-neu-dev-web-01"

# Get existing Virtual Machine
$VM = Get-AzVM `
        -ResourceGroupName $ResourceGroupName `
        -Name $VMName

# Add data disk to existing Virtual Machine
$VM = Add-AzVMDataDisk `
        -VM $VM `
        -Name "disk-neu-dev-web-data-01" `
        -DiskSizeInGB 16 `
        -Lun 0 `
        -CreateOption Empty `
        -StorageAccountType StandardSSD_LRS `
        -Caching ReadWrite

Update-AzVM `
        -ResourceGroupName $ResourceGroupName `
        -VM $VM
