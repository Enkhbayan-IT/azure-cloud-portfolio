resource pip 'Microsoft.Network/publicIPAddresses@2025-05-01' = {
  name:'pip-neu-dev-web-01'
  location:resourceGroup().location
  sku: {name:'Standard'}
  properties:{publicIPAllocationMethod:'Static'}
}
