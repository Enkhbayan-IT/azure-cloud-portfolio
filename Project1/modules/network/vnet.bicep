// Create a virtual network and subnets
@description ('Virtual network name')
param name string
@description ('Deployment location, e,g northeurope')
param location string
@description ('Address prefixes for the Virtual network')
param addressprefixes array
@description ('Subnets to create')
param subnets array


resource vnet 'Microsoft.Network/virtualNetworks@2025-05-01' = {
  name: name
  location: location

  properties: {
    addressSpace: {
      addressPrefixes:addressprefixes
    }

    subnets: [
      for s in subnets : {
        name:s.name
        properties: {
          addressPrefix:s.addressprefix
        }
      }
    ]
      
  }
}
