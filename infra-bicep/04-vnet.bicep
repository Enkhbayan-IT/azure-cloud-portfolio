resource vnet 'Microsoft.Network/virtualNetworks@2025-05-01' = {
  name:'vnet-neu-dev-web-01'
  location: 'northeurope'
  properties: {
    addressSpace: {addressPrefixes:['10.0.0.0/16']}
    subnets: [
      {name:'snet-neu-dev-web-01'
      properties:{addressPrefixes:['10.0.0.0/24']}
  }
  {name:'snet-neu-dev-web-02'
      properties:{addressPrefixes:['10.0.1.0/24']}
  }]
 }
}
