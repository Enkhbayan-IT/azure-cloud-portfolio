# Variables
$ResourceGroupName   = "rg-az-neu-dev"
$Location            = "northeurope"
$PublicIpName        = "pip-neu-dev-web-01"
$NICName             = "nic-neu-dev-web-01"
$IpConfigurationName = "ipconfig-web-01"

# Create new Public IP
$PIP = New-AzPublicIpAddress `
    -Name $PublicIpName `
    -ResourceGroupName $ResourceGroupName `
    -Location $Location `
    -Sku Standard `
    -AllocationMethod Static

# Get NIC
$NIC = Get-AzNetworkInterface `
    -Name $NICName `
    -ResourceGroupName $ResourceGroupName

# Attach Public IP to NIC IP config
$NIC | Set-AzNetworkInterfaceIpConfig `
    -Name $IpConfigurationName `
    -PublicIpAddress $PIP | Out-Null

# Save NIC changes
$NIC | Set-AzNetworkInterface

# Verify
Get-AzNetworkInterface `
    -Name $NICName `
    -ResourceGroupName $ResourceGroupName
