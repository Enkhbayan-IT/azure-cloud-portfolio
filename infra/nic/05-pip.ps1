#Variables
$ResourceGroupName   ="rg-az-swc-dev"
$Location            ="swedencentral"
$PublicIpName        ="pip-swc-dev-web-01"
$NICName             ="nic-swc-dev-web-01"
$IpConfigurationName ="ipconfig-web-01"

# Create Public IP address
$Pip = New-AzPublicIpAddress -Name $PublicIpName `
-ResourceGroupName $ResourceGroupName `
-Location $Location `
-Sku Standard `
-AllocationMethod Static

# Get existing NIC
$Nic = Get-AzNetworkInterface -Name $NICName `
-ResourceGroupName $ResourceGroupName

## Attach Public IP to NIC IP configuration
Set-AzNetworkInterfaceIpConfig -Name $IpConfigurationName `
-NetworkInterface $Nic `
-PublicIpAddress $Pip | Out-Null

# Save NIC changes to Azure
Set-AzNetworkInterface -NetworkInterface $Nic
