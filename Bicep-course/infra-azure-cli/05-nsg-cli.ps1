# Create Network Security group
az network nsg create `
    --resource-group "rg-az-neu-dev" `
    --location "northeurope" `
    --name "nsg-neu-dev-web-01" `

# Create NSG rules for SSH
az network nsg rule create `
    --resource-group "rg-az-neu-dev" `
    --nsg-name "nsg-neu-dev-web-01" `
        --name "in-allow-ssh-admin" `
        --priority 400 `
        --access "Allow" `
        --direction "Inbound" `
        --protocol "Tcp" `
        --source-address-prefixes "Internet" `
        --source-port-ranges "*" `
        --destination-address-prefixes "10.0.0.4" `
        --destination-port-ranges 22

# Create NSG rules for in allow http from internet to 10.0.0.4 address
az network nsg rule create `
    --resource-group "rg-az-neu-dev" `
    --nsg-name "nsg-neu-dev-web-01" `
        --name "in-allow-http-from-internet-to-10.0.0.4" `
        --priority 410 `
        --access "Allow" `
        --direction "Inbound" `
        --protocol "Tcp" `
        --source-address-prefixes "Internet" `
        --source-port-ranges "*" `
        --destination-address-prefixes "10.0.0.4" `
        --destination-port-ranges 80

# NSG attach to subnet
az network vnet subnet update `
    --resource-group "rg-az-neu-dev" `
    --vnet-name "vnet-neu-dev-web-01" `
    --name "snet-neu-dev-web-01" `
    --network-security-group "nsg-neu-dev-web-01"
