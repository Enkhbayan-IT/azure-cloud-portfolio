# Log Analytics Workspace Notes

## What I Learned

Log Analytics Workspace is a centralized logging solution in Azure.

It collects:
- Resource logs
- Platform logs
- VM logs

from Azure resources into one central location.

---

# Why It Is Important

Used for:
- Monitoring
- Troubleshooting
- Security analysis
- Log management

Admins can analyze logs from multiple resources in one place.

---

# Azure Monitoring Agent (AMA)

To collect logs from VMs:
- Azure Monitoring Agent is installed on machines

The agent:
- Collects monitoring data
- Sends logs to the Log Analytics Workspace

---

# Data Collection Rules (DCR)

Data Collection Rules define:
- What data to collect
- Where to send the data

---

# KQL (Kusto Query Language)

Logs inside the workspace can be queried using:

```text
KQL
```

This is used to:
- Search logs
- Analyze events
- Investigate issues

---

# Key Takeaway

Log Analytics Workspace provides centralized log storage and analysis for Azure monitoring and security operations.
