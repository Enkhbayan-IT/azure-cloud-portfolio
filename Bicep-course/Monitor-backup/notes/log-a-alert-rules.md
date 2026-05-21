# Azure Monitor - Log Analytics Alert Rules

## Overview

In this section, I learned how to create Azure Monitor alerts based on Kusto Query Language (KQL) searches inside a Log Analytics Workspace.

Azure allows alerts to be generated not only from metrics and activity logs, but also from custom log queries.

---

# What I Learned

- How to create alerts using KQL queries
- How Log Analytics Workspace can generate monitoring alerts
- How to detect anomalies from centralized logs
- How Azure Monitor evaluates query results
- How scheduled query alerts work
- How KQL summarize operator works

---

# Alert Sources in Azure Monitor

Azure Monitor supports alerts from:

- Metrics
- Activity Logs
- Log Analytics Queries

Example:

```text
Log Analytics Query → Alert Rule → Notification
