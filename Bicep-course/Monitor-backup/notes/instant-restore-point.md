# Instant Restore Point

## What is Instant Restore Point?

Azure creates a temporary snapshot before the full backup is copied into the vault.

---

## Purpose

Allows fast restore operations.

---

## Benefits

- Faster recovery
- No need to wait for full backup completion
- Quick file restore
- Quick VM restore

---

## Important Learning

Azure Backup creates:
1. Instant snapshot first
2. Full vault backup later

This improves restore speed.
