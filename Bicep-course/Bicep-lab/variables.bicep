
param resourceName string
param location string = 'northeurope'

@allowed([
  'test'
  'prod'
])
param environment string

var lowerName = toLower(resourceName)

var settings = {
  test: {
    subnet1: '10.0.0.0/24'
    subnet2: '10.0.1.0/24'
  }
  prod: {
    subnet1: '10.10.0.0/24'
    subnet2: '10.10.1.0/24'
  }
}

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-11-01' = {
  name: '${lowerName}-vnet'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'Subnet-1'
        properties: {
          addressPrefix: settings[environment].subnet1
        }
      }
      {
        name: 'Subnet-2'
        properties: {
          addressPrefix: settings[environment].subnet2
        }
      }
    ]
  }
}
