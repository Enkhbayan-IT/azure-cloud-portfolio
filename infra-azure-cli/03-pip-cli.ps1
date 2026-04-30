# Create Public IP address
az network public-ip create `
    --resource-group "rg-az-neu-dev" `
    --location "northeurope" `
    --name "pip-neu-dev-web-01" `
    --sku standard `
    --allocation-method static `
        --version IPv4