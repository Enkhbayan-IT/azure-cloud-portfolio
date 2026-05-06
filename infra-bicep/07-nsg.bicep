var nsgName = 'nsg-neu-dev-web-01'
var any = '*'

var ruleSshName = 'in-allow-ssh-admin'
var ruleSshPriority = 400
var sshPort = '22'

var svcTagInternet = 'Internet'
var httpDesIp = '10.0.0.4'
var desPort = '80'
var ruleHttpName = 'in-allow-http-from-internet-to-10.0.0.4'
var ruleHttpPriority = 410

resource nsg 'Microsoft.Network/networkSecurityGroups@2025-05-01' = {
  name: nsgName
  location: resourceGroup().location

  properties: {
    securityRules: [
      {
        name: ruleSshName
        properties: {
          description: 'Allow SSH to admin access'
          protocol: 'Tcp'
          sourcePortRange: any
          destinationPortRange: sshPort
          sourceAddressPrefix: any
          destinationAddressPrefix: any
          access: 'Allow'
          priority: ruleSshPriority
          direction: 'Inbound'
        }
      }
      {
        name: ruleHttpName
        properties: {
          description: 'Allow HTTP from Internet to 10.0.0.4'
          protocol: 'Tcp'
          sourcePortRange: any
          destinationPortRange: desPort
          sourceAddressPrefix: svcTagInternet
          destinationAddressPrefix: httpDesIp
          access: 'Allow'
          priority: ruleHttpPriority
          direction: 'Inbound'
        }
      }
    ]
  }
}
