# Create Virtual Machine availability-set
az vm availability-set create `
    --resource-group "rg-az-neu-dev" `
    --name "as-neu-dev-web-01" `
    --location "northeurope" `
    --platform-fault-domain-count 2 `
        --platform-update-domain-count 5

# Create Data-Disk
az disk create `
    --resource-group "rg-az-neu-dev" `
    --location "northeurope" `
    --name "disk-neu-dev-web-data-01" `
    --size-gb 16 `
    --sku "StandardSSD_LRS"

# Create Virtual Machine
az vm create `
    --resource-group "rg-az-neu-dev" `
    --location "northeurope" `
    --name "vm-neu-dev-web-01" `
    --nics "nic-neu-dev-web-01" `
        --size "Standard_D2s_v3" `
    --availability-set "as-neu-dev-web-01" `
    --admin-username "linuxadmin" `
    --authentication-type "SSH" `
    --generate-ssh-keys `
        --image "Canonical:ubuntu-22_04-lts:server:latest"

# Attach Data disk to VM
az vm disk attach `
    --resource-group "rg-az-neu-dev" `
    --vm-name "vm-neu-dev-web-01" `
    --name "disk-neu-dev-web-data-01" `
    --lun 0 `
    --caching "ReadWrite"

# VM boot-diagnostics enable
az vm boot-diagnostics enable `
    --resource-group "rg-az-neu-dev" `
    --name "vm-neu-dev-web-01" `
    --storage "https://stneudev100.blob.core.windows.net"
