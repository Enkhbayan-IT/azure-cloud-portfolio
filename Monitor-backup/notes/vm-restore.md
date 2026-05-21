# Azure VM Restore

## What is VM Restore?

Azure can restore an entire virtual machine from a recovery point.

---

## Restore Options

### 1. Create New VM

Creates a brand-new VM.

Safe option for testing.

---

### 2. Replace Existing VM

Replaces:
- Existing disks
- Existing VM state

Used for rollback scenarios.

---

## Additional Option

Restore:
- Only disks

Then attach them later to another VM.

---

## Staging Location

Temporary storage account used during restore.

---

## Important Learning

Restored VM includes:

- OS
- Applications
- Data
- Configuration

if they existed during backup.
