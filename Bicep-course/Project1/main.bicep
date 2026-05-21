param location string
param vnet object
param storageAccountName string
param nsg object
param winWebConfig object

@secure()
param winWebAdminPassword string

param bastion object
param lbName string
param linuxWebConfig object

@secure()
param linuxWebAdminPassword string

param testvnet object

var devNsgAttachments = [
  {
    vnet: vnet.name
    subnetName: vnet.subnets[0].name
    addressPrefix: vnet.subnets[0].addressPrefix
  }
  {
    vnet: vnet.name
    subnetName: vnet.subnets[1].name
    addressPrefix: vnet.subnets[1].addressPrefix
  }
]

var testNsgAttachments = [
  for subnet in testvnet.subnets: {
    vnet: testvnet.name
    subnetName: subnet.name
    addressPrefix: subnet.addressPrefix
  }
]

var nsgAttachments = concat(devNsgAttachments, testNsgAttachments)

module devnet 'modules/network/vnet.bicep' = {
  name: 'dev-network'
  params: {
    name: vnet.name
    location: location
    addressprefixes: vnet.addressPrefixes
    subnets: vnet.subnets
  }
}

module testnet 'modules/network/vnet.bicep' = {
  name: 'test-network'
  params: {
    name: testvnet.name
    location: location
    addressprefixes: testvnet.addressPrefixes
    subnets: testvnet.subnets
  }
}

module storage 'modules/storage/storageAccount.bicep' = {
  name: 'storage-account'
  params: {
    name: storageAccountName
    location: location
  }
}

module sharednsg 'modules/security/nsg.bicep' = {
  name: 'shared-nsg'
  params: {
    location: location
    name: nsg.name
    rules: nsg.rules
    attachments: nsgAttachments
  }
}

module ilb 'modules/network/internalLB.bicep' = {
  name: 'internal-lb'
  params: {
    location: location
    lbName: lbName
    subnetId: devnet.outputs.subnetIds[0].id
  }
  dependsOn: [
    sharednsg
  ]
}

module winWeb 'modules/compute/windowsVm.bicep' = {
  name: 'win-web-dev'
  params: {
    location: location
    baseName: winWebConfig.baseName
    vmSize: winWebConfig.vmSize
    count: winWebConfig.count
    adminUserName: winWebConfig.adminUserName
    subnetId: devnet.outputs.subnetIds[0].id
    adminPassword: winWebAdminPassword
    scriptUri: winWebConfig.scriptUri
    scriptCommand: 'powershell -ExecutionPolicy Bypass -File .\\setup-iis.ps1'
    lbBackendPoolId: ilb.outputs.backendPoolId
  }
  dependsOn: [
    sharednsg
  ]
}

module basPip 'modules/network/publicIp.bicep' = {
  name: 'bastion-ip'
  params: {
    name: bastion.pipName
    location: location
    sku: 'Standard'
    allocation: 'Static'
  }
}

module bastionHost 'modules/security/bastion.bicep' = {
  name: 'bastion-host'
  params: {
    name: bastion.name
    location: location
    subnetId: devnet.outputs.subnetIds[2].id
    publicIpId: basPip.outputs.publicIpid
  }
}

module linuxVm 'modules/compute/linuxVm.bicep' = {
  name: 'linux-vm-test'
  params: {
    location: location
    baseName: linuxWebConfig.baseName
    vmSize: linuxWebConfig.vmSize
    subnetId: testnet.outputs.subnetIds[0].id
    count: linuxWebConfig.count
    adminUserName: linuxWebConfig.adminUserName
    adminPassword: linuxWebAdminPassword
  }
}

module devToTestPeering 'modules/network/vnetpeering.bicep' = {
  name: 'dev-to-test-peering'
  params: {
    localVnetName: vnet.name
    remoteVnetName: testvnet.name
    localVnetId: devnet.outputs.vnetId
    remoteVnetId: testnet.outputs.vnetId
  }
}

module testToDevPeering 'modules/network/vnetpeering.bicep' = {
  name: 'test-to-dev-peering'
  params: {
    localVnetName: testvnet.name
    remoteVnetName: vnet.name
    localVnetId: testnet.outputs.vnetId
    remoteVnetId: devnet.outputs.vnetId
  }
}
