# Variables
$ResourceGroupName   ="rg-az-neu-dev"
$VNetName            ="vnet-neu-dev-01"
$SubnetName          ="snet-neu-dev-web-01"
$SubnetAddressPrefix ="10.0.0.0/24"

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
