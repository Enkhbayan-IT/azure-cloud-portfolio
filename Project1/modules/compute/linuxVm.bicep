
param location string
@description('Vm size e.g Standard_D2s_v3')
param vmSize string
@description('Admin username')
param adminUserName string ='linuxadmin'
@description('Admin password(or use Key Vault reference in the parameter file)')
@secure()
param adminPassword string
@description('Vm name')
param baseName string
@description('How many VMs to create')
param count int
@description('Target subnet resource ID ')
param subnetId string

var indexes = [for i in range(1,count):i]
var vmNames =[for i in indexes: 'vm-${baseName}-${i}']
var nicNames =[for i in indexes: 'nic-${baseName}-${i}']

resource nics 'Microsoft.Network/networkInterfaces@2025-05-01' = [for (nicName,i) in nicNames:{
  name:nicName
  location:location
  properties:{ 
    ipConfigurations:[{ 
      name:'ipcomfig-01'
      properties:{privateIPAllocationMethod:'Dynamic'
      subnet:{id:subnetId}
    }
    }]
  }
}]

resource vms 'Microsoft.Compute/virtualMachines@2025-11-01' = [for (vmName,i) in vmNames:{
  name:vmName
  location:location
  properties: {
    hardwareProfile:{
      vmSize:vmSize
    }
    osProfile:{ 
      computerName:vmName
      adminUsername:adminUserName
      adminPassword:adminPassword
      linuxConfiguration:{ 
        disablePasswordAuthentication: false
      }
    }
    storageProfile:{ 
      imageReference: { 
        publisher:'Canonical'
        offer:'ubuntu-24_02-lts'
        sku:'server'
        version:'latest'
      }
      osDisk:{ 
        createOption:'FromImage'
        managedDisk:{ 
          storageAccountType:'Premium_LRS'
        }
      }
    }
    networkProfile:{ 
      networkInterfaces:[{
        id:nics[i].id
        properties:{primary:true}
      }]
    }
  }
}]

