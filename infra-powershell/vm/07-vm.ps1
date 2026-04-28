# Variables
$ResourceGroupName = "rg-az-neu-dev"
$Location          = "northeurope"
$VMName            = "vm-neu-dev-web-01"
$VMSize            = "Standard_D2s_v3"
$NICName           = "nic-neu-dev-web-01"

# VM configuration
$VMConfig = New-AzVMConfig `
    -VMName $VMName `
    -VMSize $VMSize

# Credential
$Credential = Get-Credential

# OS configuration
$VMConfig = Set-AzVMOperatingSystem `
    -VM $VMConfig `
    -Linux `
    -ComputerName $VMName `
    -Credential $Credential `
    -DisablePasswordAuthentication:$false

# Source image configuration
$VMConfig = Set-AzVMSourceImage `
    -VM $VMConfig `
    -PublisherName "Canonical" `
    -Offer "ubuntu-24_04-lts" `
    -Skus "server" `
    -Version "latest"

# Get NIC
$NIC = Get-AzNetworkInterface `
    -Name $NICName `
    -ResourceGroupName $ResourceGroupName

# Add NIC to VM
$VMConfig = Add-AzVMNetworkInterface `
    -VM $VMConfig `
    -Id $NIC.Id `
    -Primary

# Create VM
New-AzVM `
    -ResourceGroupName $ResourceGroupName `
    -Location $Location `
    -VM $VMConfig
