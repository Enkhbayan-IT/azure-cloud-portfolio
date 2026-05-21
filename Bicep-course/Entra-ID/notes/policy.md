# Azure Policy Notes

## What I Learned

Azure Policy is used to enforce company standards and compliance rules in Azure.

Policies can be applied at:
- Management Group
- Subscription
- Resource Group
- Resource level

Azure Policy helps:
- Enforce compliance
- Prevent resource drift
- Standardize Azure environments
- Control costs and security

---

# Important Sections

## Definitions
Contains policy rules.

Example:
- Allowed VM sizes
- Allowed regions
- Required tags

---

## Assignments
Used to apply policies to a specific scope.

Example:
- Apply policy to a Resource Group

---

## Compliance
Shows whether resources are:
- Compliant
- Non-compliant

---

## Remediation
Automatically fixes some policy violations.

Example:
- Add missing tags
- Enable settings

---

## Exemptions
Exclude specific resources from policies.

---

# Example

A policy can limit which VM sizes users are allowed to deploy.

If users try deploying another VM SKU:
- Deployment can be denied
or
- Resource becomes non-compliant

---

# Key Takeaway

Azure Policy helps companies maintain:
- Governance
- Security
- Compliance
- Standardized infrastructure
