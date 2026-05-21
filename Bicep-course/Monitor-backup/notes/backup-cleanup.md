# Azure Backup Cleanup

## Why Cleanup is Important

Azure resources continue costing money if not deleted.

---

## Cleanup Steps

1. Delete restored VM
2. Stop backup protection
3. Delete backup data
4. Remove backup items
5. Delete Recovery Services Vault

---

## Important Learning

Recovery Services Vault cannot be deleted if:

- Backup items exist
- Recovery points exist
- Protected items still remain

Everything must be cleaned first.
