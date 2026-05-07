@description('Storage account name (3-24 lowercase numbers or letters)')
param name string
@description('Deployment location e.g northeurope')
param location string

resource sa 'Microsoft.Storage/storageAccounts@2025-08-01'= {
  name:name
  location:location
  sku: {
    name:'Standard_LRS'
  }
  kind: 'StorageV2'
}
