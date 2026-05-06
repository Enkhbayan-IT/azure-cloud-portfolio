$PWD = Read-Host -AsSecureString "Enter VM admin password"

New-AzResourceGroupDeployment `
-ResourceGroupName "rg-az-neu-test" `
-TemplateFile ".\infra-arm-templates\secure\09-secure-password.json" `
-vmName "vm-neu-dev-web-01" `
-adminUser "linuxadmin" `
-adminPassword $PWD