# Designing The Cloud

```table-of-contents
```

---
- on demand computing power
- elasticity
- ability to scale applications
	- access from anywhere
	- multiple instances
- multilatency
	- diff clients use the same cloud

---
## Virtual Networks
- 100s of individual computers
- connected with switchs and routers with redundancy
- migrate 100s of physical servers to one physical server
	- 100s of virtual servers

---
# Network Function Virtualization (NFV)
[NFV (Network Function Virtualization)](network_plus/def.md#NFV%20(Network%20Function%20Virtualization))
- replace network devices with virtual versions
	- manage from hypervisors
	- same functionality in virtual appliance
- push a button and deploy a virtual network

---
# Virtual Private Cloud (VPC)
[VPC (Virtual Private Cloud)](network_plus/def.md#VPC%20(Virtual%20Private%20Cloud))
- a pool of resources created in a public cloud
- separate VPCs per company or application
	- easily manageable
- VPCs are commonly on diff IP subnets
- connecting to cloud is usually through a VPN
- site-site VPN

### Transit gateway
- connects different VPCs
- "cloud router"

### NAT Gateway
- network address translation
- private cloud subnets connect to external resources
- external resources cannot access private cloud

### VPC Endpoint
- direct connection between diff cloud providers

### Secuirty Groups and Lists
- cloud firewall
- control inboud and outbound traffic
#### Lists
- layer 4 port numbers can be added to rules
	- TCP or UDP
- layer 3 addresses can be added to rules
	- individual address
	- CIDR block notation
	- IPv4 or IPv6
- provides broad rules for an entire IP subnet
#### Groups 
- for Virtual NICs (VNIC)
- appliy rules to specific devices and network connections
- more granular than list
