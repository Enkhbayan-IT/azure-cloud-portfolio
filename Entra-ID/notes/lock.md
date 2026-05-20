# Azure Resource Locks

## Overview

Azure Resource Locks protect resources from accidental deletion or modification.

Locks can be applied at:
- Subscription level
- Resource Group level
- Individual Resource level

Child resources inherit locks from parent scopes.

---

# Types of Locks

## CanNotDelete
- Users can read and modify resources
- Users cannot delete resources

## ReadOnly
- Users can only read resources
- Users cannot modify or delete resources

---

# Examples

## VM ReadOnly Lock
- Cannot stop/start VM
- Cannot change settings

## Resource Group Lock
All resources inside inherit the lock:
- VMs
- Storage Accounts
- VNets
- NSGs

Example:
- Viewing Storage Account keys works
- Creating containers fails

---

# Important Notes

- Locks override RBAC permissions
- Even Azure admins cannot bypass locks
- Locks must be removed before changes can be made

---

# Real World Usage

Used for:
- Production environments
- Critical infrastructure
- Shared resources
- Backup and security resources

---

# Key Takeaway

RBAC controls:
- Who can access resources

Locks control:
- What actions are allowed on resources
