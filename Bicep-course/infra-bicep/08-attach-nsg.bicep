resource nsg 'Microsoft.Network/networkSecurityGroups@2025-05-01' existing ={
  name:'nsg-neu-dev-web-01'
}

resource vnet 'Microsoft.Network/virtualNetworks@2025-05-01' existing ={ 
  name:'vnet-neu-dev-web-01'
}


resource subnetWeb 'Microsoft.Network/virtualNetworks/subnets@2025-05-01' = {
  name:'snet-neu-dev-web-01'
  parent:vnet
  properties: {
    addressPrefix:'10.0.0.0/24'
    networkSecurityGroup:{ 
      id:nsg.id
    }
  }
}
resource subnetDb 'Microsoft.Network/virtualNetworks/subnets@2025-05-01' = {
  name:'snet-neu-dev-web-02'
  parent:vnet
  properties: {
    addressPrefix:'10.0.1.0/24'
    networkSecurityGroup:{ 
      id:nsg.id
    }
  }
}
