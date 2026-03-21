# Cloud Computing

```table-of-contents
```

## Designing the cloud

### Virtual Network
- turn physical servers into virtual servers
- 1 server with hundreds of virtual servers
- replace networking devices with virtual version
	- same functionality
- allows for easy deploy
	- like version control for hardware

### Virtual Private Cloud
[VPC (Virtual Private Cloud)](network_plus/def.md#VPC%20(Virtual%20Private%20Cloud))
- pool of resources created in public cloud
- connect multiple with transit gateway 
	- commonly on different subnets
- use a [VPN (Virtual Private Network)](network_plus/def.md#VPN%20(Virtual%20Private%20Network)) for site to site connection
- use a gateway to connect users on the internet
- [NAT (Network Address Translation)](network_plus/def.md#NAT%20(Network%20Address%20Translation)) Gateway
	- includes network address translation
	- private cloud subnets can connect to external resources
	- external resources cannot access the private cloud
- VPC Endpoints
	- allow connection between two cloud providers
### Security groups and list
- like a firewall for your virtual network
- groups
	- layer 4 port numbers [TCP (Transmission Control Protocol)](network_plus/def.md#TCP%20(Transmission%20Control%20Protocol)) or [UDP (User Datagram Protocol)](network_plus/def.md#UDP%20(User%20Datagram%20Protocol))
	- layer 3 address
		- individual addresses, [CIDR (Classless Inter-Domain Routing)](network_plus/def.md#CIDR%20(Classless%20Inter-Domain%20Routing)) block notation, IPv4 or IPv6
- list
	- assign rules to entire IP subnets
