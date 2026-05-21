# Azure CLI Infrastructure Labs

This folder contains **pure Azure CLI-based scripts** for deploying and managing Azure infrastructure resources.

All scripts in this section are intentionally written using **100% Azure CLI syntax** to reinforce hands-on learning, command familiarity, and practical Azure administration skills.

This section complements the PowerShell labs in this repository by demonstrating how the same Azure resources can be created and managed using **Azure CLI commands only**, without relying on PowerShell cmdlets.

---

## Purpose

The goal of this section is to demonstrate practical Azure infrastructure deployment using **pure Azure CLI** as part of a cloud engineering portfolio.

This approach helps build:

- Strong familiarity with Azure CLI command structure
- Confidence with common Azure resource deployment workflows
- Real-world command-line administration skills
- A clean separation between Azure CLI and PowerShell tooling

---

## Scripting Approach

All scripts in this folder follow a **pure Azure CLI style**:

- **Azure CLI commands only (`az ...`)**
- No PowerShell cmdlets (`New-Az*`, `Get-Az*`, etc.)
- No mixed-tool scripting logic inside Azure CLI labs
- Commands are kept as close as possible to real-world Azure CLI usage

> Note: Some files may use the `.ps1` extension for easier execution in a Windows + VS Code + PowerShell environment, but the script content itself remains **pure Azure CLI**.

---

## Topics Covered

- Resource Group
- Virtual Network (VNet)
- Subnet
- Network Security Group (NSG)
- Public IP
- Network Interface (NIC)
- Virtual Machine (VM)
- Storage Account
- App Service Plan and Web App

---

## Example

```bash
az group create --name rg-neu-dev-web-01 --location northeurope