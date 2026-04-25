
# Azure Network Interface (NIC) Lab

## Objective
This lab demonstrates how to create an Azure Network Interface (NIC) using PowerShell.

A NIC is required before creating a Virtual Machine (VM), because the VM needs a primary network interface for network connectivity.

---

## Resources Used
- **Resource Group:** `rg-az-swc-dev`
- **Location:** `swedencentral`
- **Virtual Network:** `vnet-swc-dev-01`
- **Subnet:** `snet-swc-dev-web-01`
- **Network Interface:** `nic-swc-dev-web-01`

---

## Summary
In this lab, I created an Azure Network Interface and connected it to an existing subnet inside a Virtual Network.

This NIC will be used as the primary network interface for a future Virtual Machine deployment.

---

## What I Learned
- A Virtual Machine requires a primary NIC before deployment
- A NIC is connected to a subnet inside a VNet
- Azure resources often depend on each other and must be created in the correct order
- PowerShell can be used to automate infrastructure deployment
