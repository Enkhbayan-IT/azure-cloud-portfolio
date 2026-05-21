@description('form recognizer name')
param frName string
@description('name of the form recognizer resource')
param location string = 'northeurope'
param dynamicThrottling bool = true
param capacity int = 1
param testEnvironment object = {
  name: 'test'
  owner: 'Stefan'}
param prodEnvironment object = {
    name: 'S0'
    capacity: capacity
  }
param allowedIp array = [ 
      { 
value: '94.234.86.252'
      }
]

resource recognizer 'Microsoft.CognitiveServices/accounts@2025-09-01' = {
  name: frName
  location: location
  sku: {
  name: prodEnvironment.name
  capacity: prodEnvironment.capacity
  }

  kind: 'FormRecognizer'
  properties: {
    dynamicThrottlingEnabled: dynamicThrottling
    networkAcls:{
      defaultAction:'Deny'
      ipRules: allowedIp
    }
  }
  tags:testEnvironment
}
 

 