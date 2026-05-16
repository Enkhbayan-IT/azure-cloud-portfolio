param location string
param vnet object
param storageAccountName string
param nsg object
param winWebConfig object
@secure()
param winWebAdminPassword string
param bastion object

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

module winWeb 'modules/compute/windowsVm.bicep' = {
  name:'win-web-dev'
  params:{
    location:location
    baseName:winWebConfig.baseName
    vmSize:winWebConfig.vmSize
    count:winWebConfig.count
    adminUserName:winWebConfig.adminUserName
    subnetId:devnet.outputs.subnetIds[0].id 
    adminPassword:winWebAdminPassword
    scriptUri:winWebConfig.scriptUri
    scriptCommand:'powershell -ExecutionPolicy Bypass -File .\\setup-iis.ps1'
  }
  dependsOn:[
    sharednsg
  ]
}
module basPip 'modules/network/publicIp.bicep' ={
  name:'bastion-ip'
  params: {
    name:bastion.pipName
    location:location
    sku:'Standard'
    allocation:'Static'
  }
}



module bastionHost 'modules/security/bastion.bicep'={
  name:'bastion'
  params: { 
    name:bastion.name
    location:location
    subnetId:devnet.outputs.subnetIds[2].id
    publicIpId:basPip.outputs.publicIpid
  }
}
