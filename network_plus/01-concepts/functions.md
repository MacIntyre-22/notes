# Networking Functions
```table-of-contents
```

## Networking Functions
- part of the infrastructure
- remote access w secure comms
- traffic management
- protocol support

## Domain Name System (DNS)
[DNS (Domain Name System)](def.md#DNS%20(Domain%20Name%20System))
- dns lookups resolve an ip to a FQDN
- a device cache the lookup for a ttl amount of time

## Content Delivery Network (CDN)
[CDN (Content Delivery Network)](def.md#CDN%20(Content%20Delivery%20Network))
- time to get data much shorter
- duplicate data across servers so people get it from local areas instead of across the world
- invs to end user

## Virtual Private Network (VPN)
[VPN (Virtual Private Network)](def.md#VPN%20(Virtual%20Private%20Network))
- secure private data traversing a public network
  - encrypted coms on insecure medium
- Concentrator / head-end Encryption/decryption access device
  - Often integrated into a firewall

## Quality of Service (QoS)
[QoS (Quality of Service)](def.md#QoS%20(Quality%20of%20Service))
- traffic shaping, packet shaping
- control by bandwidth usage or data rates
- set priority for certain apps

## Time to Live (TTL)
[TTL (Time to Live)](def.md#TTL%20(Time%20to%20Live))
- uses like dropping a packet after certain amount of hops/ stuck in loop
- clear a cache

## Routing Loops
- two routers think the next hop is to each other
- creates loops, ttl stops this
- Loops could cause a packet to live forever
- Drop the packet after a certain number of hops
- Each pass through a router is a hop
  - Default TTL for macOS/Linux is 64 hops
  - Default TTL for Windows is 128 hops
- The router decreases TTL by 1
  - A TTL of zero is dropped by the router