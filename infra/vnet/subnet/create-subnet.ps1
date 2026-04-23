#Define variables
$ResourceGroupName   ="rg-az-swc-dev"
$VNetName            ="vnet-swc-dev-01"
$SubnetName          ="snet-swc-dev-web-01"
$SubnetAddressPrefix ="10.0.1.0/24"

# Get existing VNet
$VNet = Get-AzVirtualNetwork `
            -ResourceGroupName $ResourceGroupName `
            -Name $VNetName

# Add subnet (local object)
Add-AzVirtualNetworkSubnetConfig `
    -Name $SubnetName `
    -VirtualNetwork $VNet `
    -AddressPrefix $SubnetAddressPrefix

# Push to Azure
$VNet | Set-AzVirtualNetwork
