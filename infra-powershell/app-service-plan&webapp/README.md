# Deploy an Azure Web App using PowerShell

This script creates a Linux Azure App Service Plan and deploys an Azure Web App using PowerShell.

The Web App is configured to use PHP 8.3 as the runtime stack.

## What this script does

- Creates a Linux App Service Plan
- Uses the Free pricing tier
- Creates an Azure Web App
- Connects the Web App to the App Service Plan
- Configures the Web App runtime to PHP 8.3

## Resources created

- Resource Group: rg-az-neu-dev
- Location: westeurope
- App Service Plan: asp-neu-dev-web-01
- Web App: appneudevweb100
- Runtime Stack: PHP 8.3
- Plan Type: Linux
- Pricing Tier: Free

## Learning outcome

This lab demonstrates how to deploy an Azure Web App with PowerShell by first creating an App Service Plan, then creating the Web App, and finally configuring the Linux runtime stack.
