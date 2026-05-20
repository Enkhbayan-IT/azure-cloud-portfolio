# Azure Activity Log Notes

## What I Learned

Azure Activity Log records admin-level actions in Azure.

It shows what happened in the Azure control plane.

---

# Examples

Activity Log can record actions like:
- VM start/stop/deallocate
- Resource creation
- Resource deletion
- Listing Storage Account keys
- Policy changes
- Role assignments

---

# Why It Is Important

Activity Log helps with:
- Troubleshooting
- Security auditing
- Tracking admin actions
- Understanding resource changes

---

# Important Concept

Metrics show resource performance.

Activity Log shows administrative actions.

Example:

```text
Metrics = CPU usage of VM
Activity Log = Who stopped the VM
```

---

# Key Takeaway

Activity Log helps administrators see who did what, when, and on which Azure resource.
