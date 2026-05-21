# Azure Alerts Notes

## What I Learned

Azure Monitor Alerts notify administrators when something unusual happens in Azure resources.

Example:
- High CPU usage
- High network traffic
- Resource health issues

Alerts can also automate responses using Action Groups.

---

# Alert Creation Process

## 1. Scope
Choose which resource to monitor.

Example:
- Virtual Machine
- Storage Account

---

## 2. Condition / Signal
Choose which metric triggers the alert.

Examples:
- CPU Percentage
- Network In Total

---

## 3. Threshold

### Static Threshold
Admin manually defines the limit.

Example:
```text
CPU > 80%
```

### Dynamic Threshold
Azure Monitor learns normal behavior and detects abnormal activity automatically.

---

# Aggregation Types

Examples:
- Total
- Average

Used to evaluate metrics over time.

---

# Action Groups

Action Groups define what happens when alerts fire.

Examples:
- Send Email
- Send SMS
- Run Automation
- Restart VM automatically

Action Groups can be reused across multiple alert rules.

---

# Alert Result

When conditions are met:
- Alert enters Fired state
- Notifications are sent
- Automated actions can run

---

# Key Takeaway

Azure Alerts help:
- Detect problems quickly
- Notify administrators
- Automate responses
- Monitor infrastructure health
