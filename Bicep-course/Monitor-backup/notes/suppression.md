# Azure Alert Suppression Notes

## What I Learned

Azure Monitor supports alert suppression using:

```text
Alert Processing Rules
```

Suppression means:
- Alerts still get evaluated
- Alerts can still fire
- But notifications/actions are muted temporarily

The alert itself is NOT deleted or disabled.

---

# Common Use Case

Example:
- Company performs planned maintenance
- VMs need restart during patching
- Alerts may normally trigger

Instead of notifying admins during planned maintenance:
- Notifications can be temporarily suppressed

This avoids unnecessary alerts.

---

# Important Concept

Suppression:
- Mutes Action Groups
- Does NOT stop alert evaluation

Example:
- Email notifications stop temporarily
- Alert logic still runs in background

---

# Rule Types

## Suppress Notifications
- Alert fires
- Action Group does not run

## Action Group Processing
- Defines notification/actions when alert triggers

---

# Scheduling

Suppression rules can:
- Run always
or
- Run during a specific maintenance window

---

# Difference

## Disable Alert Rule
- Alert stops completely

## Suppression
- Alert continues running
- Only notifications are muted

---

# Key Takeaway

Alert suppression helps reduce unnecessary notifications during planned maintenance or expected infrastructure changes.
