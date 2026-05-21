resource storageAccount 'Microsoft.Storage/storageAccounts@2025-08-01' = {
  name:'storageaccneu01'
  location:'northeurope'
  kind:'StorageV2'
  sku: { 
    name:'Standard_LRS'
  }
  properties: {
    accessTier:'Hot'
    supportsHttpsTrafficOnly:true
    }
}
