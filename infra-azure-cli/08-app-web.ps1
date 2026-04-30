# Create Appservice Plan
az appservice plan create `
    --resource-group "rg-az-neu-dev" `
    --location "northeurope" `
    --name "asp-neu-dev-web-01" `
    --sku "F1" `
    --is-linux `

# Create Webapp
az webapp create `
    --resource-group "rg-az-neu-dev" `
    --name "appneudevweb100" `
    --plan "asp-neu-dev-web-01" `
    --runtime "PHP:8.3"