# Devices
```table-of-contents
title: 
style: nestedList # TOC style (nestedList|nestedOrderedList|inlineFirstLevel)
minLevel: 0 # Include headings from the specified level
maxLevel: 0 # Include headings up to the specified level
include: 
exclude: 
includeLinks: true # Make headings clickable
hideWhenEmpty: false # Hide TOC if no headings are found
debugInConsole: false # Print debug info in Obsidian console
```
---
## Networking Devices
- many ways to forward traffic
  - data center full of equipment
- can be difficult to remove once installed
- every device has a purpose
---
## Router
[Router](def.md#Router)
- routes traffic between ip subnets
- layer 3 router
- layer 2 switch
	- Together as a "Layer 3 switch"
- connects diverse network types
  - LAN, WAN, copper, fiber
---
## Switch
[Switch](def.md#Switch)
- bridging done in hardware
- application specific integrated circuit (ASIC)
- layer 2
  - forwards traffic based on data link address
- many [ports](network_plus/01-concepts/ports.md) and features
  - PoE
  - core of an enterprise network
- mulitlayer switches
  - includes routing functionality
---
## Firewalls
[Firewall](def.md#Firewall)
- filters traffic by port or app
- traditional vs NGFW
- encrypt traffic
  - VPN between firewalls on different sites
- layer 3
  - often sits on ingress/egress of networks (north-south traffic)
- [NAT (Network Address Translation)](def.md#NAT%20(Network%20Address%20Translation))
- Dynamic routing
---
## IDS and IPS
[IDS (Intrusion Detection System)](def.md#IDS%20(Intrusion%20Detection%20System))
[IPS (Intrusion Prevention System)](def.md#IPS%20(Intrusion%20Prevention%20System))

- watch network traffic
- intrusion
  - exploits against os, apps, etc
  - buffer overflows, cross-site scripting, other vulnerabilities
- Detection vs Prevention
  - detection, alarm
  - prevention, stop before it happens
---
## Balancing the Load
- distribute the load
  - multiple servers
  - invisible to end user
- large scale implementations
  - web server farms, db farms
- fault tolerance
  - server outages have no effect
  - fast coverage
---
## Load Balancer
[Load Balancer](def.md#Load%20Balancer)
- config load
  - manage across servers
- tcp offload
  - protocol overhead
- ssl offload
  - encryption/decryption
- caching
  - fast response
- prioritization
  - QoS [QoS (Quality of Service)](def.md#QoS%20(Quality%20of%20Service))
- content switching
  - app centric balancing
---
## Proxies
[Proxy](def.md#Proxy)
- sits between the users and external network
- recieves and sends request on their behalf
- explicit
  - apps may need to know how to use the proxy
- transparent
  - some proxies are invisible
---
## NAS vs SAN
[NAS (Network Attached Storage)](def.md#NAS%20(Network%20Attached%20Storage))

[SAN (Storage Area Network)](def.md#SAN%20(Storage%20Area%20Network))
- Network Attached Storage (NAS)
  - connect to shared storage across network
  - file level access
- Storage Area Network (SAN)
  - looks and feels like local storage
  - block level access
  - efficient reading and writing
---
## Access Point
[Access Point (AP)](def.md#Access%20Point%20(AP))
- is a bridge
  - extends wired netowrk to wireless network
  - [OSI](network_plus/01-concepts/osi.md) layer 2
---
## Wireless LAN Controllers
[Wireless LAN Controller (WLC)](def.md#Wireless%20LAN%20Controller%20(WLC))
- centeralized management of access points
- deploy new access points
- monitoring etc.
