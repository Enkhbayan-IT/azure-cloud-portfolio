# Project1 - Modular Azure Infrastructure with Bicep

This project demonstrates a modular Azure infrastructure deployment using Bicep.  
The goal is to build a realistic cloud environment by separating networking, compute, storage, and security resources into reusable modules.

## Architecture Overview

This project deploys:

- Development virtual network with multiple subnets
- Test virtual network
- Network security group with subnet associations
- Windows Server web virtual machines
- Linux test virtual machine
- Internal Load Balancer
- Azure Bastion
- Public IP for Bastion
- Storage account
- VNet peering between the development and test networks

## Folder Structure

```text
Project1/
├── main.bicep
├── modules/
│   ├── compute/
│   │   ├── windowsVm.bicep
│   │   └── linuxVm.bicep
│   ├── network/
│   │   ├── vnet.bicep
│   │   ├── internalLB.bicep
│   │   ├── publicIp.bicep
│   │   └── vnetpeering.bicep
│   ├── security/
│   │   ├── nsg.bicep
│   │   └── bastion.bicep
│   └── storage/
│       └── storageAccount.bicep