# Azure Backup - Recovery Services Vault

## Overview

In this section, I learned how Azure Backup works using Recovery Services Vault and how Azure stores backup data for virtual machines.

Before enabling VM backups, a Recovery Services Vault must first be created.

---

# What I Learned

- What a Recovery Services Vault is
- How Azure VM backups are stored
- How to create a Recovery Services Vault
- Why the vault must be in the same region as the VM
- Backup redundancy options
- Soft Delete functionality
- Backup security concepts in Azure

---

# What is a Recovery Services Vault?

A Recovery Services Vault is an Azure resource used to store:

- Virtual Machine backups
- Backup recovery points
- Disaster recovery data
- Azure Site Recovery information

---

# Azure VM Backup Flow

```text
Azure Virtual Machine
        ↓
Azure Backup Service
        ↓
Recovery Services Vault
        ↓
Stored Backup Data
