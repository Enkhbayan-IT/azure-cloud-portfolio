@description('Bastion host name')
param name string
@description('Location area')
param location string
@description('Subnet Id for Bastion')
param subnetId string
@description('Pip Id for Bastion')
param publicIpId string

resource bas 'Microsoft.Network/bastionHosts@2025-05-01' = {
  name:name
  location:location
  sku:{
    name:'Standard'
  }
  properties: {
    enableTunneling:true
    scaleUnits: 2 
    ipConfigurations:[{
      name:'bastion-ipconfig'
      properties:{
        subnet:{id:subnetId}
        publicIPAddress:{id:publicIpId}
        
      }
    }]
  }
}

