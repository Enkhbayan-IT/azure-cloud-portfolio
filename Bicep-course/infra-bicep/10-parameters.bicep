@description('Virtual machine name')
param vmName string = 'vm-neu-dev-web-01'
@description('Admin Username for the VM')
param adminUsername string

@secure()
@description('Admin password for the VM')
param adminPassword string


resource nic 'Microsoft.Network/networkInterfaces@2025-05-01' existing = {
  name:'nic-neu-dev-web-01'
}

resource sa 'Microsoft.Storage/storageAccounts@2025-08-01' existing = {
  name:'stneudev100'
}
var bootDiagBlobEndpoint = sa.properties.primaryEndpoints.blob 

resource vm 'Microsoft.Compute/virtualMachines@2025-04-01' = {
  name: vmName
  location: resourceGroup().location
  properties: {
    hardwareProfile:{
      vmSize:'Standard_D2s_v3'
    }
    osProfile:{
      computerName:vmName
      adminUsername:adminUsername
      adminPassword:adminPassword
      linuxConfiguration:{
        disablePasswordAuthentication:false
      }
    }
    storageProfile: {
      imageReference: {
        publisher:'Canonical'
        offer:'ubuntu-24_04-lts'
        sku:'server'
        version:'latest'
      }
      osDisk:{
        name:'osdisk-vm-neu-dev-web-01'
        caching:'ReadWrite'
        createOption:'FromImage'
        managedDisk:{
          storageAccountType:'Standard_LRS'
        }
      }
    }
    networkProfile: {
      networkInterfaces:[{
        id:nic.id
      }]
    }
    diagnosticsProfile:{
      bootDiagnostics:{
        enabled:true
        storageUri:bootDiagBlobEndpoint
      }
    }
  }
}
