$ResourceGroupName = "rg-az-swc-dev"
$Location          = "swedencentral"
$VNetName          = "vnet-swc-dev-01"
$AddressSpace      = "10.0.0.0/16"

New-AzVirtualNetwork `
    -Name $VNetName `
    -ResourceGroupName $ResourceGroupName `
    -Location $Location `
    -AddressPrefix $AddressSpace
