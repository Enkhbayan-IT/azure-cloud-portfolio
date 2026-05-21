resource nic 'Microsoft.Network/networkInterfaces@2025-05-01' existing = {
  name:'nic-neu-dev-web-01'
}

resource sa 'Microsoft.Storage/storageAccounts@2025-08-01' existing = {
  name:'stneudev100'
}

resource avset 'Microsoft.Compute/availabilitySets@2025-04-01' = {
  name: 'avset-neu-dev-web-01'
  location: resourceGroup().location
  sku: {
    name: 'Aligned'
  }
  properties:{
    platformFaultDomainCount:2
    platformUpdateDomainCount:5
  }
}

resource dataDisk 'Microsoft.Compute/disks@2025-01-02' = {
  name: 'disk-neu-dev-data-web-01'
  location:resourceGroup().location
  sku: {
    name:'Standard_LRS'
  }
  properties: {
    creationData:{createOption:'Empty'}
    diskSizeGB: 16
  }
}

var bootDiagBlobEndpoint = sa.properties.primaryEndpoints.blob 

resource vm 'Microsoft.Compute/virtualMachines@2025-04-01' = {
  name: 'vm-neu-dev-web-01'
  location: resourceGroup().location
  properties: {
    hardwareProfile:{
      vmSize:'Standard_D2s_v3'
    }
    availabilitySet:{
      id:avset.id
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
      dataDisks: [{
        createOption:'Attach'
        lun:0
        managedDisk: {
          id:dataDisk.id
        }
      }
        
      ]
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
