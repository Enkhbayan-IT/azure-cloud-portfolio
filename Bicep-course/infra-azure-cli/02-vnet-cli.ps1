# Create new Virtual Network
az network vnet create `
    --location "northeurope" `
    --resource-group "rg-az-neu-dev" `
    --name "vnet-neu-dev-web-01" `
    --address-prefixes "10.0.0.0/16" `
    --subnet-name "snet-neu-dev-web-01" `
    --subnet-prefixes "10.0.0.0/24" 