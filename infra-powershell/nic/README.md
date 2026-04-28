# Azure PowerShell - Create NIC and Attach Public IP

This project demonstrates how to create an **Azure Network Interface (NIC)** inside an existing subnet and then attach a **Public IP Address** to that NIC using **Azure PowerShell**.

This lab is part of a foundational Azure networking and infrastructure automation workflow.

---

## 📌 Overview

This lab includes two core tasks:

1. **Create a Network Interface (NIC)** in an existing subnet
2. **Create a Public IP Address and attach it to the NIC**

### Azure Resources Used

- **Resource Group:** `rg-az-neu-dev`
- **Location:** `northeurope`
- **Virtual Network:** `vnet-neu-dev-01`
- **Subnet:** `snet-neu-dev-web-01`
- **Network Interface:** `nic-neu-dev-web-01`
- **IP Configuration Name:** `ipconfig-web-01`
- **Public IP:** `pip-neu-dev-web-01`

---

## 🛠️ Technologies Used

- Azure PowerShell (`Az` module)
- PowerShell
- Microsoft Azure
│
├── 04-nic.ps1
├── 05-public-ip.ps1
└── README.md
