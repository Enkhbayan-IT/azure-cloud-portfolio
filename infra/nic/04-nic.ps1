#Variables
$ResourceGroupName  ="rg-az-swc-dev"
$Location           ="swedencentral"
$NICName            ="nic-swc-dev-web-01"
$VNetName           ="vnet-swc-dev-01"
$SubnetName          ="snet-swc-dev-web-01"

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
