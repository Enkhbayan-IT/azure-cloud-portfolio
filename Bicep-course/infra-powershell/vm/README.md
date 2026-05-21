# Azure PowerShell - Linux VM Deployment with Managed OS Disk

This project demonstrates how to deploy an **Azure Linux Virtual Machine (VM)** using **Azure PowerShell** and explains the **managed OS disk** that is automatically created by Azure during VM provisioning.

This lab focuses specifically on:

- Creating a Linux Virtual Machine
- Attaching an existing Network Interface (NIC)
- Understanding Azure's automatically provisioned **managed OS disk**

---

## 📌 Overview

This lab deploys a Linux virtual machine in Azure using a pre-existing NIC and a Marketplace image.

### Resources Covered in This Lab

- **Virtual Machine:** `vm-neu-dev-web-01`
- **Managed OS Disk:** `vm-neu-dev-web-01_disk1_...`

### Region

- **North Europe** (`northeurope`)

---

## 🛠️ Technologies Used

- Azure PowerShell (`Az` module)
- PowerShell
- Microsoft Azure
- Azure Virtual Machine
- Azure Managed Disk
- Ubuntu 24.04 LTS
