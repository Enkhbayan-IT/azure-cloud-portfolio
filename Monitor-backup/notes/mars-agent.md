# Azure Recovery Services Agent (MARS Agent)

## What is Recovery Services Agent?

Microsoft Azure Recovery Services Agent (MARS Agent) is used to:

- Backup files
- Backup folders
- Backup volumes
- Backup system state

from:

- Azure Virtual Machines
- On-premises servers
- Virtual machines

---

## Main Purpose

Unlike normal Azure VM Backup, the Recovery Services Agent allows selective backup.

This means we can backup:

- Specific files
- Specific folders
- Specific drives
- System state only

instead of backing up the entire VM.

---

## Difference Between VM Backup and Recovery Services Agent

| Azure VM Backup | Recovery Services Agent |
|---|---|
| Backs up entire VM | Backs up selected data |
| VM-level protection | File-level protection |
| Uses VM snapshot | Uses installed agent |
| Good for full VM recovery | Good for selective recovery |

---

## How Recovery Services Agent Works

### Step 1 — Install Agent

Install the Microsoft Recovery Services Agent on the machine.

---

### Step 2 — Register with Recovery Services Vault

Connect the agent to an Azure Recovery Services Vault.

---

### Step 3 — Configure Backup

Choose what to protect:

- Files
- Folders
- Volumes
- System state

---

### Step 4 — Run Backup

Start scheduled or manual backup.

---

## Supported Backup Types

### File Backup

Backup selected files.

---

### Folder Backup

Backup selected folders.

---

### Volume Backup

Backup an entire drive or partition.

Example:
- C:
- D:

---

### System State Backup

Backup important operating system configuration.

Example:
- Registry
- Boot files
- System configuration

---

## Example Scenario

In this lab:

1. Install Recovery Services Agent on:
   - Web One
   - Web Two

2. Backup files from:
   - Web One

3. Restore those files onto:
   - Web Two

---

## Important Learning

Recovery Services Agent is useful when:

- Full VM backup is unnecessary
- Only important folders need protection
- Faster backup is required
- Lower backup storage usage is needed

---

## Advantages

### Selective Backup

Backup only required data.

---

### Lower Storage Usage

Smaller backups reduce storage costs.

---

### Faster Restore

Recover only the needed files.

---

### On-Premises Support

Can protect non-Azure machines.

---

## Important Concepts

### Agent-Based Backup

Backup requires software installation on the machine.

---

### Vault Registration

The machine must be connected to a Recovery Services Vault.

---

### Backup Policy

Defines:
- Schedule
- Frequency
- Retention

---

## Real-World Use Cases

Recovery Services Agent is commonly used for:

- File servers
- On-premises backup
- Shared folders
- Application data protection
- Small selective backups
- System state recovery

---

## Important Difference to Remember

### Azure VM Backup

Best for:
- Full VM recovery
- Disaster recovery
- Infrastructure protection

---

### Recovery Services Agent

Best for:
- File-level recovery
- Folder-level protection
- Selective backup
- On-premises workloads

---

## What I Learned

From this section, I learned:

- Azure has multiple backup methods
- Not every workload requires full VM backup
- Recovery Services Agent provides selective protection
- Machines must register with the Recovery Services Vault
- File recovery and VM recovery are different concepts
- Agent-based backup is useful for hybrid environments

---

## Summary

Microsoft Recovery Services Agent allows selective backup and restore operations for Azure and on-premises machines.

It is useful when full VM backup is unnecessary and only specific files, folders, or system components need protection.
