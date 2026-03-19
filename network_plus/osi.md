# OSI Model
[[OSI](osi.md) Model (Open Systems Interconnection Reference Model)](def.md#[OSI](osi.md)%20Model%20(Open%20Systems%20Interconnection%20Reference%20Model))]

```table-of-contents
```

## Layer 1 - Physical Layer
[Layer 1 – Physical Layer](def.md#Layer%201%20–%20Physical%20Layer)
- signaling, cabling, connectors
- isnt really about protocols
- physical layer problems include
  - fix cabling, punchdows, etc
  - run loopback test, replace cables, swap adapter cards

## Layer 2 - Data Link Layer
[Layer 2 – Data Link Layer](def.md#Layer%202%20–%20Data%20Link%20Layer)
- bbasic network language
- foundation of communications
- Data link control (DLC) protocols
  - MAC (media access control) address on ethernet
- the switching layer

## Layer 3 - Network Layer
[Layer 3 – Network Layer](def.md#Layer%203%20–%20Network%20Layer)
- routing layer
- internet protocol (IP)
- fragments frames to traverse different networks

## Layer 4 - Transport Layer
[Layer 4 – Transport Layer](def.md#Layer%204%20–%20Transport%20Layer)
- post office
  - parcels and letters
- TCP [[def#TCP (Transmission Control Protocol)]]
- UDP [[def#UDP (User Datagram Protocol)]]

## Layer 5 - Session Layer
[Layer 5 – Session Layer](def.md#Layer%205%20–%20Session%20Layer)
- communication management
- between [devices](devices.md)
  - start stop restart
- control protocols, tunneling protocols

## Layer 6 - Presentation Layer
[Layer 6 – Presentation Layer](def.md#Layer%206%20–%20Presentation%20Layer)
- character encoding
- app encryption
- often combined with layer 7 application layer

## Layer 7 - Application Layer
[Layer 7 – Application Layer](def.md#Layer%207%20–%20Application%20Layer)
- visual
- http, ftp, dns, pop3

## Example
- Application: https://mail.google.com
- Presentation: SSL encryption
- Session: Link the presentation to the transport
- Transport: TCP encapsulation
- Network: IP encapsulation
- Data Link: Ethernet
- Physical: Electrical signals