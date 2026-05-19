# Azure Resource Move Notes

Azure resources can be moved:
- Between Resource Groups
- Between Subscriptions

Important:
- Resource location does NOT change during move operations.
- Source and target Resource Groups are temporarily locked during the move.
- Existing resources remain operational.

Common reasons:
- Application reorganization
- Billing management
- Governance improvements
- Team ownership changes

Important warning:
- Resource IDs change after moving resources.
- Scripts/tools using hardcoded resource IDs may require updates.
