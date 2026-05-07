param location string
param vnet object
param storageAccountName string
param nsg object

var nsgAttachments = [
  for subnet in vnet.subnets: {
    vnet: vnet.name
    subnetName: subnet.name
    addressPrefix: subnet.addressPrefix
  }
]

module devnet 'modules/network/vnet.bicep' = {
  name:'dev-network'
  params:{
    name:vnet.name
    location:location
    addressprefixes:vnet.addressPrefixes
    subnets:vnet.subnets
  }
}

module storage 'modules/storage/storageAccount.bicep' = {
  name:'stneudev100'
  params: {
    name:storageAccountName
    location:location
  }
}

module sharednsg 'modules/security/nsg.bicep' = { 
  name: 'shared-nsg'
  dependsOn: [
    devnet
  ]
  params: { 
    location: location
    name: nsg.name
    rules: nsg.rules
    attachments: nsgAttachments
  }
}
