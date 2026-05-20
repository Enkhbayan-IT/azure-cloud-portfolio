# Azure Monitor - IIS Logs with Log Analytics Workspace

## Overview

In this section, I learned how to collect Internet Information Services (IIS) logs from Windows Server virtual machines and stream them into a centralized Log Analytics Workspace using Data Collection Rules (DCR).

---

# What I Learned

- How IIS logging works on Windows Server
- How to collect IIS logs using Data Collection Rules
- How IIS logs are streamed to Log Analytics Workspace
- How Azure Monitor centralizes web server logs
- How IIS logs are stored inside dedicated Log Analytics tables

---

# What is IIS?

Internet Information Services (IIS) is a Windows Server role that allows a machine to function as a web server.

IIS can host:

- Websites
- Web applications
- APIs
- Internal web services

---

# IIS Log Files

IIS automatically generates logs for web traffic.

Examples:

- HTTP requests
- Client IP addresses
- Request paths
- Status codes
- Web activity

Default IIS logging location:

```text
C:\inetpub\logs\LogFiles
