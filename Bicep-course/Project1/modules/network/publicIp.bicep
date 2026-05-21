@description('Public IP address name')
param name string
@description('location')
param location string
@description('Sku: Standard required for Bastion')
param sku string = 'Standard'
@description('Public IP allocation method')
param allocation string ='Static'

resource pip 'Microsoft.Network/publicIPAddresses@2025-05-01' = {
   name:name
   location:location
   sku:{name:sku}
   properties:{publicIPAllocationMethod:allocation}
}
output publicIpid string=pip.id
