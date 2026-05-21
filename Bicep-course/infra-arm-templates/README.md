# ARM Templates Infrastructure Labs

This folder contains Azure Resource Manager (ARM) templates for deploying and managing Azure infrastructure resources.

The goal of this section is to demonstrate Infrastructure as Code (IaC) fundamentals using JSON-based ARM templates. These labs focus on reusable deployment files, parameters, dependencies, and core Azure infrastructure components.

## Topics Covered

- Resource Group deployments
- Storage Account deployment
- Virtual Network and Subnet configuration
- Network Security Group rules
- Public IP Address
- Network Interface
- Virtual Machine deployment
- ARM parameters
- Parameter files
- Resource dependencies with `dependsOn`
- Availability Set
- Managed Data Disk
- Linux Web App and App Service Plan

## Folder Structure

```text
infra-arm-templates/
├── 01-rg.json
├── 02-storage.json
├── 03-vnet.json
├── parameters-file/
│   ├── 10-parameters-file.json
│   ├── 11-dependency.json
│   ├── 12-availability.json
│   ├── 13-data-disk.json
│   ├── deployment.ps1
│   └── main-parameters.json
└── custom-script/
    ├── 14-custom-script.json
    ├── 15-webapp.json
    └── setup-nginx.sh
