# Variables
$ResourceGroupName = "rg-az-swc-dev"
$Location          = "swedencentral"
$NSGName           = "nsg-swc-dev-web-01"
$VNetName          = "vnet-swc-dev-01"
$SubnetName        = "snet-swc-dev-web-01"

# Create inbound rule to allow HTTP traffic from the Internet to private IP 10.0.0.4 on port 80
$AllowHttp = New-AzNetworkSecurityRuleConfig -Name "in-allow-http-from-internet-to-10.0.0.4" `
-Access Allow `
-Protocol Tcp `
-Direction Inbound `
-Priority 410 `
-SourceAddressPrefix Internet `
-SourcePortRange * `
-DestinationAddressPrefix "10.0.0.4" `
-DestinationPortRange 80

# Create inbound rule to allow SSH traffic from the Internet to private IP 10.0.0.4 on port 22
$AllowSSH = New-AzNetworkSecurityRuleConfig -Name "in-allow-ssh-admin" `
-Access Allow `
-Protocol Tcp `
-Direction Inbound `
-Priority 400 `
-SourceAddressPrefix Internet `
-SourcePortRange * `
-DestinationAddressPrefix "10.0.0.4" `
-DestinationPortRange 22

# Create a new Network Security Group and add the HTTP and SSH rules
$Nsg = New-AzNetworkSecurityGroup -Name $NSGName `
-ResourceGroupName $ResourceGroupName `
-Location $Location `
-SecurityRules $AllowHttp, $AllowSSH

# Get the existing Virtual Network
$VNet = Get-AzVirtualNetwork `
-ResourceGroupName $ResourceGroupName `
-Name $VNetName

# Attach the NSG to the existing subnet
# AddressPrefix must match the current subnet address range
Set-AzVirtualNetworkSubnetConfig -VirtualNetwork $VNet `
-Name $SubnetName `
-AddressPrefix "10.0.1.0/24" `
-NetworkSecurityGroup $Nsg

# Save the updated VNet configuration to Azure
Set-AzVirtualNetwork -VirtualNetwork $VNet
