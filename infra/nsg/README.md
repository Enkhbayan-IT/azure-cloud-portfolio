# Azure PowerShell - Create NSG and Associate It with a Subnet

This project demonstrates how to create an **Azure Network Security Group (NSG)** with inbound security rules and associate it with an existing **Subnet** using **Azure PowerShell**.

This lab is part of an Azure networking and infrastructure automation workflow and focuses on subnet-level traffic control.

---

## 📌 Overview

This lab performs the following tasks:

1. Creates an **NSG**
2. Adds inbound security rules for:
   - **SSH (port 22)**
   - **HTTP (port 80)**
3. Retrieves the existing **Virtual Network**
4. Associates the NSG with an existing **Subnet**
5. Pushes the updated VNet configuration to Azure

### Azure Resources Used

- **Resource Group:** `rg-az-neu-dev`
- **Location:** `northeurope`
- **Virtual Network:** `vnet-neu-dev-01`
- **Subnet:** `snet-neu-dev-web-01`
- **Subnet Address Prefix:** `10.0.0.0/24`
- **Network Security Group:** `nsg-neu-dev-web-01`

---

## 🛠️ Technologies Used

- Azure PowerShell (`Az` module)
- PowerShell
- Microsoft Azure




