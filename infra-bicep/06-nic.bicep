resource pip 'Microsoft.Network/publicIPAddresses@2025-05-01' existing = {
  name: 'pip-neu-dev-web-01'
}

resource vnet 'Microsoft.Network/virtualNetworks@2025-05-01' existing = {
  name: 'vnet-neu-dev-web-01'
}

resource subnet 'Microsoft.Network/virtualNetworks/subnets@2025-05-01' existing = {
  name: 'snet-neu-dev-web-01'
  parent: vnet
}

resource nic 'Microsoft.Network/networkInterfaces@2025-05-01' = {
  name: 'nic-neu-dev-web-01'
  location: resourceGroup().location

  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig-web-01'
        properties: {
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: subnet.id
          }
          publicIPAddress: {
            id: pip.id
          }
        }
      }
    ]
  }
}
