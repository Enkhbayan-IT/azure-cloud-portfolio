resource sa 'Microsoft.Storage/storageAccounts@2025-08-01' = {
  name:'stneudev100'
  location:'northeurope'
  sku:{
    name:'Standard_LRS'}
    kind:'StorageV2'
}
