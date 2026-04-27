$ResourceGroupName ="rg-az-neu-dev"
$Location          ="northeurope"

New-AzResourceGroup -Name $ResourceGroupName `
                    -Location $Location
