resource nic 'Microsoft.Network/networkInterfaces@2025-05-01' existing = {
  name:'nic-neu-dev-web-01'
}

resource sa 'Microsoft.Storage/storageAccounts@2025-08-01' existing = {
  name:'stneudev100'
}
var bootDiagBlobEndpoint = sa.properties.primaryEndpoints.blob 

resource vm 'Microsoft.Compute/virtualMachines@2025-04-01' = {
  name: 'vm-neu-dev-web-01'
  location: resourceGroup().location
  properties: {
    hardwareProfile:{
      vmSize:'Standard_D2s_v3'
    }
    osProfile:{
      computerName:'vm-neu-dev-web-01'
      adminUsername:'linuxadmin'
      adminPassword:'Azure@123'
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

resource cse 'Microsoft.Compute/virtualMachines/extensions@2025-04-01' = {
  name:'ext-nginx-setup'
  parent:vm
  location:resourceGroup().location
  properties: {
    publisher:'Microsoft.Azure.Extensions'
    type:'CustomScript'
    typeHandlerVersion:'2.1'
    autoUpgradeMinorVersion: true

    settings:{
      fileUris: [
        'https://stneudev100.blob.core.windows.net/script/setup-nginx.sh?sp=r&st=2026-05-07T09:46:36Z&se=2026-05-07T18:01:36Z&spr=https&sv=2025-11-05&sr=b&sig=yqaJUyNcgb%2FQktN0Yl4kVkndrc8az%2FEbKP2ARfOBhvQ%3D'
      ]
    }
    protectedSettings: {
      commandToExecute:'bash setup-nginx.sh'
     }
   }
 }
