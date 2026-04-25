# Azure Network Security Group (NSG) Lab

## Objective
This lab demonstrates how to create an Azure Network Security Group (NSG) using PowerShell, define inbound security rules, and associate the NSG with an existing subnet.

The NSG is used to control inbound traffic to resources in the subnet.

---

## Resources Used
- **Resource Group:** `rg-az-swc-dev`
- **Location:** `swedencentral`
- **Virtual Network:** `vnet-swc-dev-01`
- **Subnet:** `snet-swc-dev-web-01`
- **Subnet Address Prefix:** `10.0.1.0/24`
- **Network Security Group:** `nsg-swc-dev-web-01`

---

## Security Rules Configured
- **Allow HTTP (TCP 80)** from the Internet to `10.0.0.4`
- **Allow SSH (TCP 22)** from the Internet to `10.0.0.4`

---

## Summary
In this lab, I created a Network Security Group with custom inbound rules for HTTP and SSH traffic.

I then associated the NSG with an existing subnet inside the Virtual Network, allowing controlled external access to resources in that subnet.

---

## What I Learned
- An NSG controls inbound and outbound traffic in Azure
- NSG rules can allow or deny traffic based on protocol, port, source, and destination
- NSGs can be attached to either a subnet or a network interface
- Changes to subnet configuration must be saved back to the Virtual Network object
