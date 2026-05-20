# Azure Management Groups

## Overview

Azure Management Groups help organize and manage multiple Azure subscriptions.

They sit above subscriptions in the Azure hierarchy.

---

# Why Use Management Groups?

Companies may have many subscriptions for different departments:
- IT
- Logistics
- Finance
- Development

Management Groups help manage them centrally.

---

# Benefits

## Centralized RBAC
Roles assigned at the Management Group level are inherited by child subscriptions.

Example:
- Global administrators automatically get access across subscriptions.

## Centralized Azure Policies
Policies assigned at the Management Group level apply to all child subscriptions.

Example:
- Enforce allowed regions
- Require resource tags
- Restrict resource types

## Better Organization
Helps structure enterprise Azure environments using hierarchy.

---

# Azure Hierarchy

Management Group
└── Subscription
    └── Resource Group
        └── Resources

---

# Key Takeaway

Management Groups provide centralized:
- Access control (RBAC)
- Policy management
- Subscription organization

Useful for large enterprise environments with multiple subscriptions.
