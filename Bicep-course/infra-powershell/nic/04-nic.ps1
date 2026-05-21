# Variables
$ResourceGroupName ="rg-az-neu-dev"
$Location          ="northeurope"
$NICName            ="nic-neu-dev-web-01"
$VNetName           ="vnet-neu-dev-01"
$SubnetName         ="snet-neu-dev-web-01"

# Get existing Virtual Network object
$VNet = Get-AzVirtualNetwork `
            -ResourceGroupName $ResourceGroupName `
            -Name $VNetName
# Get existing Subnet object from the VNet
$Subnet = Get-AzVirtualNetworkSubnetConfig `
            -Name $SubnetName `
            -VirtualNetwork $VNet

# Create Network Interface in the subnet
New-AzNetworkInterface -Name $NICName `
-ResourceGroupName $ResourceGroupName `
-Location $Location `
-Subnet $Subnet `
-IpConfigurationName "ipconfig-web-01"
