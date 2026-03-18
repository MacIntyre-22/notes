# Networking Functions

- [Networking Functions](#networking-functions)
  - [Networking Functions](#networking-functions-1)
  - [Content Delivery Network (CDN)](#content-delivery-network-cdn)
  - [Virtual Private Network (VPN)](#virtual-private-network-vpn)
  - [Quality of Service (QoS)](#quality-of-service-qos)
  - [Time to Live (TTL)](#time-to-live-ttl)
  - [Routing Loops](#routing-loops)


## Networking Functions
- part of the infrastructure
- remote access w secure comms
- traffic management
- protocol support

## Content Delivery Network (CDN)
[[def#CDN (Content Delivery Network)]]
- time to get data much shorter
- duplicate data across servers so people get it from local areas instead of across the world
- invs to end user

## Virtual Private Network (VPN)
[[def#VPN (Virtual Private Network)]]
- secure private data traversing a public network
  - encrypted coms on insecure medium
- Concentrator / head-end Encryption/decryption access device
  - Often integrated into a firewall

## Quality of Service (QoS)
[[def#QoS (Quality of Service)]]
- traffic shaping, packet shaping
- control by bandwidth usage or data rates
- set priority for certain apps

## Time to Live (TTL)
[[def#TTL (Time to Live)]]
- uses like dropping a packet after certain amount of hops/ stuck in loop
- clear a cache

## Routing Loops
[[def#loop]]
- two routers think the next hop is to each other
- creates loops, ttl stops this