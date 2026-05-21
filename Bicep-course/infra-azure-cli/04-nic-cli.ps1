# Create Network Interface
az network nic create `
    --resource-group "rg-az-neu-dev" `
    --location "northeurope" `
    --name "nic-neu-dev-web-01" `
    --vnet-name "vnet-neu-dev-web-01" `
    --subnet "snet-neu-dev-web-01" `
        --public-ip-address "pip-neu-dev-web-01"