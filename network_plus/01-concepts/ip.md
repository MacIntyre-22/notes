# IP (Internet Protocol)

```table-of-contents
```

## Intro to IP
--- 
- a series of moving vans
- network topology is the road
	- ethernet, cable system
- the truck is the IP
- boxes hold your data
	- boxes of TCP/UDP
- inside boxes is application data

## [TCP (Transmission Control Protocol)](network_plus/def.md#TCP%20(Transmission%20Control%20Protocol)) and [UDP (User Datagram Protocol)](network_plus/def.md#UDP%20(User%20Datagram%20Protocol))

- transported inside IP
- diff features for diff applications
- [Layer 4 – Transport Layer](network_plus/def.md#Layer%204%20–%20Transport%20Layer)
- multiplexing
	- use many apps at the same time 

### TCP
- connection oriented
- formal connection and setup
- recover from errors
- can manage out of order messages or retransmissions
	- reciver can request missing data
- reciver can manage flow control

### UDP
- no formal proccess
- unreliable delivery
	- no error recovery
	- no recording of data or retransmission
- no flow control


## Delivery
--- 
- truck delievers from one IP to another IP
- boxes have ports on them (houses)
- boxes arrive at houses, Ports
- ports are for communication, not security
- TCP port numbers aren't the same as UDP
	- TCP/80 and UDP/80 may be used at the same time

### IPv4 sockets
- server ip, protocol, and server app port number
- client ip, protocol, client port number

### Non-ephemoral Ports
- permanent ports/ well known ports
- ports 0 - 1023
- usually on a server or service

### Ephemeral ports
- temporary ports
- port 1024-65535