# Azure Recovery Services Agent Installation and Backup Configuration

## Lab Scenario

This lab demonstrates how to:

- Install Microsoft Azure Recovery Services Agent (MARS Agent)
- Register a machine with Recovery Services Vault
- Configure selective file backup
- Perform manual backup
- Prepare for file recovery on another VM

Scenario:

- Backup files from:
  - VM Dev Web One

- Restore files later onto:
  - VM Dev Web Two

---

# Step 1 — Open Recovery Services Vault

Go to:

Recovery Services Vault
→ Properties

Scroll down to:

- Microsoft Azure Recovery Services Agent

Download the agent installer onto your local laptop.

---

# Step 2 — Download Vault Credentials

Still inside the Recovery Services Vault:

Download:
- Vault Credentials file

Purpose:
- Required to register the machine with Azure Backup

Files required:
- MARS Agent installer (.exe)
- Vault Credentials file

---

# Step 3 — Enable Local Drive Access in RDP

Before connecting to the VM:

Open:
- Remote Desktop Connection (.rdp file)

Right click:
- Show More Options
- Edit

Go to:

Local Resources
→ More

Enable:
- C Drive

Purpose:
- Allows copying files from local laptop to Azure VM

Click:
- OK
- Connect

---

# Step 4 — Verify Local Drive Mapping

After connecting to the Windows VM:

Open:
- File Explorer
- This PC

Verify:
- Local C drive from laptop is visible

Example:
- C on Work Device

Purpose:
- Enables file transfer from laptop to VM

---

# Step 5 — Copy Installation Files to VM

Copy these files:

- MARS Agent installer
- Vault Credentials file

From:
- Local laptop

To:
- Azure VM

Recommended:
- Copy into a temporary folder

Example:
- D:\Temp
- D:\Dev

Note:
- File transfer may take several minutes depending on region and network speed

---

# Step 6 — Install Recovery Services Agent

Launch:
- MARS Agent installer

Installation steps:

1. Accept installation folder
2. Click Next
3. Skip Microsoft Update
4. Click Install

Purpose:
- Installs Microsoft Azure Recovery Services Agent on the VM

---

# Step 7 — Register Machine with Recovery Services Vault

After installation:

Launch:
- Microsoft Azure Recovery Services Agent

Begin registration process.

Browse for:
- Vault Credentials file

Example location:
- D:\

Click:
- Next

---

# Step 8 — Configure Passphrase

Create a passphrase.

Requirements:
- Minimum 16 characters

Purpose:
- Encrypts and decrypts backup data

Important:
- This passphrase is required later during restore operations

Recommended:
- Store securely

Demo scenario:
- Saved locally on D drive

Production recommendation:
- Store securely using Azure Key Vault or enterprise secret management

---

# Step 9 — Complete Registration

Click:
- Finish

Result:
- Machine registers with Microsoft Azure Backup

After registration:
- Recovery Services Agent console opens

---

# Step 10 — Configure Backup Schedule

Inside the agent console:

Select:
- Schedule Backup

Purpose:
- Define what to backup
- Define when to backup

---

# Step 11 — Select Backup Items

In the backup wizard:

Click:
- Add Items

Select:
- Files
- Folders

Example:
- C:\inetpub

Purpose:
- Configure selective backup

---

# Step 12 — Configure Backup Schedule

Choose backup frequency:

Options:
- Daily
- Weekly

Purpose:
- Define automatic backup schedule

---

# Step 13 — Configure Retention Policy

Define:
- Backup retention duration

Example:
- 30 days

Purpose:
- Determines how long recovery points are stored

---

# Step 14 — Configure Data Transfer

Select:
- Transfer over the network

Click:
- Next
- Finish

Result:
- Backup schedule is created

---

# Step 15 — Run Manual Backup

To start backup immediately:

Click:
- Backup Now

Select:
- Backup items

Define retention:
- 1 month

Click:
- Next

Result:
- Manual backup starts immediately

Important:
- Future backups continue automatically based on schedule

---

# Key Concepts Learned

## Recovery Services Agent

Used for:
- File-level backup
- Folder-level backup
- Selective backup

---

## Vault Credentials

Required for:
- Registering machines with Recovery Services Vault

---

## Passphrase

Required for:
- Backup encryption
- Restore operations

Losing the passphrase may prevent recovery.

---

## Selective Backup

Unlike Azure VM Backup:
- Only selected files/folders are protected

Benefits:
- Lower storage usage
- Faster backup
- Faster restore

---

# Real-World Use Cases

Commonly used for:

- File servers
- Shared folders
- Application configuration backup
- On-premises servers
- Hybrid cloud backup

---

# Skills Demonstrated

- Azure Backup Administration
- Recovery Services Vault Management
- MARS Agent Installation
- File-Level Backup
- Backup Scheduling
- Passphrase Management
- Manual Backup Operations
- Hybrid Backup Configuration

---

# Summary

In this lab:

1. Downloaded MARS Agent
2. Downloaded Vault Credentials
3. Installed Recovery Services Agent
4. Registered VM with Recovery Services Vault
5. Configured selective file backup
6. Created backup schedule
7. Performed manual backup

This demonstrates how Azure supports agent-based selective backup for both Azure and on-premises workloads.
