resource sa 'Microsoft.Storage/storageAccounts@2025-08-01' = [for i in range(1,3):{
  name:'${i}stneudev100'
  location:'northeurope'
  sku:{
    name:'Standard_LRS'}
    kind:'StorageV2'
}]
