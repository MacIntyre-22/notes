# Devices

- [Devices](#devices)
  - [Networking Devices](#networking-devices)
  - [Router](#router)
  - [Switch](#switch)
  - [Firewalls](#firewalls)
  - [IDS and IPS](#ids-and-ips)
  - [Balancing the Load](#balancing-the-load)
  - [Load Balancer](#load-balancer)
  - [Proxies](#proxies)
  - [NAS vs SAN](#nas-vs-san)
  - [Access Point](#access-point)

## Networking Devices
- many ways to forward traffic
  - data center full of equipment
- can be difficult to remove once installed
- every device has a purpose
  
## Router
[[def#Router]]
- routes traffic between ip subnets
- layer 3 router
- layer 2 switch
- connects diverse network types
  - LAN, WAN, copper, fiber
  
## Switch
[[def#Switch]]
- bridging done in hardware
- application specific integrated circuit (ASIC)
- layer 2
  - forwards traffic based on data link address
- many ports and features
  - PoE
  - core of an enterprise network
- mulitlayer switches
  - includes routing functionality

## Firewalls
[[def#Firewall]]
- filters traffic by port or app
- encrypt traffic
  - VPN between sites
- layer 3
  - often sites on ingress/egress of networks (north-south traffic)
- Network Address Translation (NAT) [[def#NAT (Network Address Translation)]]
- Dynamic routing

## IDS and IPS
[[def#IDS (Intrusion Detection System)]]

[[def#IPS (Intrusion Prevention System)]]
- watch network traffic
- intrusion
  - exploits against os, apps, etc
  - buffer overflows, cross-site scripting, other vulnerabilities
- Detection vs Prevention
  - detection, alarm
  - prevention, stop before it happens

## Balancing the Load
- distribute the load
  - multiple servers
  - invisible to end user
- large scale implementations
  - web server farms, db farms
- fault tolerance
  - server outages have no effect
  - fast coverage

## Load Balancer
[[def#Load Balancer]]
- config load
  - manage across servers
- tcp offload
  - protocol overhead
- ssl offload
  - encryption/decryption
- caching
  - fast response
- prioritization
  - QoS [[def#QoS (Quality of Service)]]
- content switching
  - app centric balancing

## Proxies
[[def#Proxy]]
- sits between the users and external network
- recieves and sends request on their behalf
- explicit
  - apps may need to know how to use the proxy
- transparent
  - some proxies are invisible

## NAS vs SAN
[[def#NAS (Network Attached Storage)]]

[[def#SAN (Storage Area Network)]]
- Network Attached Storage (NAS)
  - connect to shared storage across network
  - file level access
- Storage Area Network (SAN)
  - looks and feels like local storage
  - block level access
  - efficient reading and writing

## Access Point
[[def#Access Point (AP)]]
- is a bridge
  - extends wired netowrk to wireless network
  - osi layer 2 [[osi#Layer 2 - Data Link Layer]]
