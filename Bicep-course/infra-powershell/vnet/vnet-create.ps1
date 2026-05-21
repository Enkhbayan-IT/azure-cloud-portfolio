$ResourceGroupName ="rg-az-neu-dev"
$Location          ="northeurope"
$VNetName          ="vnet-neu-dev-01"
$AddressSpace      ="10.0.0.0/16"

New-AzVirtualNetwork `
                    -Name $VNetName `
                    -ResourceGroupName $ResourceGroupName `
                    -Location $Location `
                    -AddressPrefix $AddressSpace
