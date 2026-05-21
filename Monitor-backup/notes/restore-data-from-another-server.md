# Azure Recovery Services Agent — Restore Data from Another Server

## Lab Scenario

This lab demonstrates how to restore backup data from:

- VM Dev Web One

onto:

- VM Dev Web Two

using Microsoft Azure Recovery Services Agent (MARS Agent).

The backup was already created on the first machine.

Now the goal is to recover those files on another virtual machine.

---

# Step 1 — Install Recovery Services Agent on Second VM

On:
- VM Dev Web Two

Install:
- Microsoft Azure Recovery Services Agent

Purpose:
- Required before restore operations can be performed.

---

# Step 2 — Register Second VM with Recovery Services Vault

After installation:

Launch:
- Microsoft Azure Recovery Services Agent

Browse for:
- Vault Credentials file

Register the machine with:
- Recovery Services Vault

Purpose:
- Allows the machine to communicate with Azure Backup services.

---

# Step 3 — Configure Passphrase

Create:
- Passphrase

Purpose:
- Encrypts and decrypts backup data.

Important:
- Passphrase must be stored securely.

---

# Step 4 — Launch Recovery Services Agent

After registration:

Open:
- Microsoft Azure Recovery Services Agent

---

# Step 5 — Start Recovery Process

Select:
- Recover Data

Purpose:
- Restore backup data from Recovery Services Vault.

---

# Step 6 — Select Recovery Source

Question:
- Recover data from this server?

Select:
- Another Server

Reason:
- Backup was created on VM Dev Web One.

---

# Step 7 — Browse for Vault Credentials

Browse for:
- Vault Credentials file

Click:
- Next

Purpose:
- Authenticate with Recovery Services Vault.

---

# Step 8 — Select Backup Server

Select:
- VM Dev Web One

Purpose:
- Access backup recovery points from first machine.

---

# Step 9 — Enter Original Passphrase

Enter:
- Passphrase created on VM Dev Web One

Purpose:
- Decrypt backup data.

Important:
- Restore requires the original passphrase from the source server.

---

# Step 10 — Select Recovery Point

Choose:
- Recovery Point

Select:
- C Drive volume

Result:
- Available backup snapshots become visible.

---

# Step 11 — Mount Recovery Point

Click:
- Mount

Purpose:
- Maps backup snapshot as a local drive.

Result:
- New mounted drive appears.

Example:
- F:\ drive

---

# Step 12 — Browse Backup Files

Open:
- Mounted drive

Example:
- F:\

Result:
- Files from VM Dev Web One become accessible.

Important:
- Files are accessed from backup snapshot
- Not directly from the original VM

---

# Step 13 — Verify Restored Data

Confirm:
- Files exist
- Folder structure is correct
- Backup recovery succeeded

---

# Step 14 — Unmount Recovery Point

After verification:

Click:
- Unmount

Purpose:
- Disconnect recovery snapshot from machine.

---

# Important Concepts Learned

## Cross-Server Restore

Azure Recovery Services Agent supports:

- Backup from one server
- Restore onto another server

---

## Mounted Recovery Drive

Recovery points appear as:
- Temporary mounted drives

Purpose:
- Easy file browsing and recovery.

---

## Recovery Point

Recovery is performed using:
- Backup snapshots
- Recovery points

NOT:
- Live VM disks

---

## Passphrase Requirement

Restore operations require:
- Original backup passphrase

Without it:
- Backup recovery may fail

---

# Real-World Use Cases

Common enterprise scenarios:

- Restore deleted files
- Recover data onto replacement servers
- File migration
- Shared folder recovery
- Disaster recovery testing

---

# Skills Demonstrated

- Azure Backup Administration
- Recovery Services Agent Usage
- Cross-Server File Recovery
- Recovery Point Mounting
- Backup Encryption Management
- File-Level Restore Operations

---

# Summary

In this lab:

1. Registered second VM with Recovery Services Vault
2. Connected to backup from another server
3. Mounted recovery point
4. Accessed backup files
5. Verified restored data
6. Unmounted recovery drive

This demonstrates how Azure Recovery Services Agent supports secure file-level recovery across multiple virtual machines.
