$ErrorActionPreference = "Stop"

$ResourceGroupName = "rg-az-neu-dev"
$Location          = "westeurope"
$AppServicePlan    = "asp-neu-dev-web-01"
$WebAppName        = "appneudevweb100"

# Create Linux App Service Plan
New-AzAppServicePlan `
    -ResourceGroupName $ResourceGroupName `
    -Location $Location `
    -Name $AppServicePlan `
    -Tier "Free" `
    -Linux

# Create Web App
New-AzWebApp `
    -ResourceGroupName $ResourceGroupName `
    -Location $Location `
    -Name $WebAppName `
    -AppServicePlan $AppServicePlan

# Configure PHP 8.3 runtime
Set-AzResource `
    -ResourceGroupName $ResourceGroupName `
    -ResourceType "Microsoft.Web/sites/config" `
    -ResourceName "$WebAppName/web" `
    -ApiVersion "2022-03-01" `
    -PropertyObject @{ linuxFxVersion = "PHP|8.3" } `
    -Force
