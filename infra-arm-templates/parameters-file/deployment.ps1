$PWD = Read-Host -AsSecureString "Enter VM admin password"

New-AzResourceGroupDeployment `
-ResourceGroupName "rg-az-neu-test" `
-TemplateFile ".\infra-arm-templates\parameters-file\10-parameters-file.json" `
-TemplateParameterFile ".\infra-arm-templates\parameters-file\main-parameters.json" `
-adminPassword $PWD