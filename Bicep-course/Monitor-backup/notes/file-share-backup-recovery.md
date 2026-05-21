# Azure File Share Backup and Recovery

## Lab Overview

This lab demonstrates how to:

- Enable backup for Azure File Shares
- Use Recovery Services Vault with Azure Storage
- Create backup policies
- Trigger manual backups
- Restore deleted files
- Perform cleanup operations

Scenario:

- Existing Azure Storage Account
- Azure File Share containing Bicep files
- Backup protection using Recovery Services Vault

---

# Step 1 — Open Azure File Share

Go to:

Storage Account
→ File Shares

Select:
- Existing file share

Example:
- Bicep file share

Purpose:
- Configure backup protection for Azure Files

---

# Step 2 — Open Backup Section

Inside the file share:

Go to:
- Backup

Purpose:
- Configure Azure File Share backup

Important:
- Backup can also be configured during file share creation

---

# Step 3 — Select Recovery Services Vault

Choose:
- Existing Recovery Services Vault

Result:
- Azure connects the file share to backup services

---

# Step 4 — Configure Backup Policy

Azure automatically creates:
- Backup Policy

Default configuration:

- Daily full backup
- Scheduled backup time
- Daily retention settings

Optional:
- Modify policy if required

Example:
- Change retention duration
- Change backup frequency

---

# Step 5 — Configure Snapshot Protection

Option:
- Protect snapshots against accidental storage account deletion

Feature:
- Resource lock protection

Demo configuration:
- Disabled

Production recommendation:
- Enable protection lock

Purpose:
- Prevent accidental backup deletion

---

# Step 6 — Enable Backup

Click:
- Enable Backup

Important Concept:

At this stage Azure only:

1. Registers the storage account
2. Registers the file share
3. Associates backup policy

Actual backup has NOT started yet.

Backups will run:
- According to schedule
- Or manually

---

# Step 7 — Verify Backup Configuration

Go back to:

Storage Account
→ File Shares
→ File Share
→ Backup

Verify:
- Backup enabled

Status may show:
- Initial backup pending

---

# Step 8 — Trigger Manual Backup

Click:
- Backup

Configure:
- Retention duration

Click:
- OK

Result:
- Manual backup starts immediately

---

# Step 9 — Monitor Backup Jobs

Click:
- View Jobs

Navigate to:
- Recovery Services Vault
- Backup Jobs

Purpose:
- Monitor backup progress

Lab Result:
- Backup completed in approximately 5 seconds

Reason:
- Small amount of file data

---

# Step 10 — Verify Backup Success

Go back to:
- File Share
- Backup

Verify:
- Last backup status = Success

Also verify:
- Snapshot exists

Important Concept:

Azure creates:
- Recovery snapshot
- Restore point

Used for:
- File recovery
- Share recovery

---

# Step 11 — Simulate File Deletion

Go to:
- Browse

Delete:
- Test files

Example:
- Remove two files

Purpose:
- Test recovery process

---

# Step 12 — Start File Recovery

Go to:
- Backup
- File Recovery

Select:
- Snapshot restore point

Click:
- OK

---

# Step 13 — Select Files to Restore

Choose:
- Deleted files

Click:
- Select

If prompted:
- Overwrite existing files = Yes

Click:
- Restore

Result:
- Restore operation starts

---

# Step 14 — Verify Restored Files

After restore completes:

Go to:
- Browse

Verify:
- Deleted files are restored

Result:
- Recovery successful

---

# Important Concepts Learned

## Azure File Share Backup

Azure Backup supports:
- Azure Files protection
- File-level recovery
- Entire share recovery

---

## Snapshot Restore Point

Backups create:
- Snapshots
- Recovery points

Used for:
- Fast file restore

---

## File-Level Recovery

Individual files can be restored without restoring the full share.

---

## Entire Share Recovery

Azure also supports:
- Full file share restore

---

# Real-World Use Cases

Azure File Share backup is useful for:

- Shared department files
- Bicep repositories
- Application configuration files
- User document recovery
- Disaster recovery

---

# Cleanup Process

Cleanup is important to:

- Reduce Azure costs
- Remove unused backup data
- Allow vault cleanup

---

# Step 15 — Open Recovery Services Vault

Navigate to:
- Recovery Services Vault

Refresh page.

---

# Step 16 — Open Backup Items

Go to:
- Backup Items
- Azure Storage
- Azure Files

Verify:
- Backup items exist

---

# Step 17 — Stop Backup Protection

Open:
- Context Menu

Select:
- Stop Backup

Enable:
- Delete Backup Data

Enter:
- File share name

Click:
- Stop Backup

Purpose:
- Remove backup protection and stored recovery data

---

# Step 18 — Verify Backup Item Removal

Refresh:
- Backup Items

Verify:
- Backup item no longer exists

---

# Step 19 — Open Backup Infrastructure

Navigate to:
- Backup Infrastructure
- Azure Storage Accounts

Purpose:
- Manage registered storage accounts

---

# Step 20 — Unregister Storage Account

Select:
- Registered Storage Account

Click:
- Unregister

Purpose:
- Remove storage account association from Recovery Services Vault

Important:
- Required for complete cleanup

---

# Skills Demonstrated

- Azure File Share Backup
- Recovery Services Vault Management
- Backup Policy Configuration
- Manual Backup Operations
- File-Level Recovery
- Snapshot Recovery
- Azure Storage Protection
- Backup Monitoring
- Azure Cleanup Operations

---

# Key Takeaways

I learned that Azure Backup supports:

- Virtual Machines
- Azure Files
- File-level restore
- Snapshot-based recovery

I also learned that:

- Backup enablement does not immediately create backup data
- Recovery points allow fast restore operations
- Azure File Shares support both file recovery and full share recovery
- Cleanup is required before removing Recovery Services Vault resources

---

# Summary

In this lab:

1. Enabled backup for Azure File Share
2. Configured backup policy
3. Triggered manual backup
4. Verified snapshot creation
5. Deleted test files
6. Recovered deleted files
7. Stopped backup protection
8. Removed backup data
9. Unregistered storage account

This demonstrates how Azure Backup protects Azure File Shares using Recovery Services Vault and snapshot-based recovery.
