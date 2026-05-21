# Azure VM Backup

## What is Azure VM Backup?

Azure VM Backup protects virtual machines by creating recovery points.

These backups are stored inside a Recovery Services Vault.

---

## Backup Process

When backup is enabled:

1. VM is registered with the vault
2. Backup item is created
3. Backup policy is attached
4. Recovery points are created

---

## Backup Types

### Scheduled Backup

Runs automatically based on schedule.

Examples:
- Daily
- Weekly
- Hourly

---

### Manual Backup

Triggered immediately using:

Backup now

Useful before:
- Updates
- Software installation
- Risky changes

---

## Backup Policy

Defines:

- Frequency
- Retention
- Schedule
- Instant snapshot settings

---

## Important Learning

Backup enable ≠ backup started immediately.

Azure first configures protection.

Actual backup starts:
- On schedule
- Or manually
