
resource plan 'Microsoft.Web/serverfarms@2025-03-01' = {
  name: 'asp-neu-dev-plan-01'
  location:resourceGroup().location
  kind: 'linux'
  sku: {
    name:'F1'
    capacity: 1
  }
  properties:{
    reserved:true
  }
}

resource web 'Microsoft.Web/sites@2025-03-01' = {
  name: 'app-neu-dev-web-01'
  location:resourceGroup().location
  kind: 'app, linux'
  properties: {
    serverFarmId:plan.id
  }
}
