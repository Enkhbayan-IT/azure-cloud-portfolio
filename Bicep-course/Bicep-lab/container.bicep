resource storageAccount 'Microsoft.Storage/storageAccounts@2025-08-01' existing = {
  name:'storageaccneu01'
}
 resource container 'Microsoft.Storage/storageAccounts/blobServices/containers@2025-08-01' = {
  name: '${storageAccount.name}/default/script'
  properties: {
    publicAccess:'None'
  }
}

resource service 'Microsoft.Storage/storageAccounts/fileServices@2026-04-01' = {
  parent: storageAccount
  name: 'default'
}
