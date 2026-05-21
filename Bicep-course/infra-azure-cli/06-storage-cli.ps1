# Create Storage Account
az storage account create `
    --resource-group "rg-az-neu-dev" `
    --location "northeurope" `
    --name "stneudev100" `
    --kind "StorageV2" `
    --sku "Standard_LRS"