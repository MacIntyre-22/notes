# Definitions

### OSI Model (Open Systems Interconnection Reference Model)
- A 7-layer conceptual framework used to understand and standardize how data travels across a network. Mnemonic: **All People Seem To Need Data Processing** (Application, Presentation, Session, Transport, Network, Data Link, Physical).

### Layer 1 – Physical Layer
- The physics of the network: signaling, cabling, and connectors. Not about protocols — deals with the actual transmission of raw bits over a physical medium.

### Layer 2 – Data Link Layer
- The "switching" layer. Handles communication using MAC (Media Access Control) addresses. Uses Data Link Control (DLC) protocols such as Ethernet.

### Layer 3 – Network Layer
- The "routing" layer. Uses Internet Protocol (IP) to route packets between networks. Fragments frames to traverse different networks.

### Layer 4 – Transport Layer
- The "post office" layer. Uses TCP and UDP to deliver data between endpoints. Handles multiplexing, flow control, and error recovery.

### Layer 5 – Session Layer
- Manages communication sessions between devices: start, stop, restart. Includes control protocols and tunneling protocols.

### Layer 6 – Presentation Layer
- Handles character encoding and application encryption. Often combined with the Application Layer in practice.

### Layer 7 – Application Layer
- The layer end users interact with. Includes protocols like HTTP, FTP, DNS, and POP3.

### Router
- An OSI Layer 3 device that routes traffic between IP subnets. Connects diverse network types such as LAN, WAN, copper, and fiber. Sometimes called a "Layer 3 switch" when built into a switch.

### Switch
- An OSI Layer 2 device that forwards traffic based on MAC addresses using application-specific integrated circuits (ASICs). The core of an enterprise network; may provide Power over Ethernet (PoE). A multilayer switch also includes Layer 3 routing.

### Firewall
- Filters traffic by port number or application. Can encrypt traffic via VPN, perform NAT, and act as a Layer 3 router. Traditional firewalls vs. Next-Generation Firewalls (NGFW).

### IDS (Intrusion Detection System)
- Monitors network traffic for exploits and vulnerabilities. Raises an alarm or alert when an intrusion is detected but does not block it.

### IPS (Intrusion Prevention System)
- Monitors network traffic like an IDS, but actively stops threats before they enter the network.

### Load Balancer
- Distributes traffic across multiple servers to prevent overload. Features include TCP offload, SSL offload, caching, QoS prioritization, and content switching. Provides fault tolerance.

### Proxy
- Sits between users and the external network. Forwards requests on users' behalf. Used for caching, access control, URL filtering, and content scanning. Can be explicit or transparent.

### NAS (Network Attached Storage)
- A shared storage device accessed over the network at the file level.

### SAN (Storage Area Network)
- A storage system that appears as a local storage device to the host. Uses block-level access and is very efficient for reading and writing. Often uses an isolated, high-speed network.

### Access Point (AP)
- An OSI Layer 2 bridge that extends a wired network to wireless clients. A wireless router combines an AP and a router in one device.

### Wireless LAN Controller (WLC)
- Provides centralized management of multiple access points from a single console. Handles deployment, monitoring, configuration, and reporting. Usually proprietary.

### CDN (Content Delivery Network)
- Geographically distributed caching servers that deliver content to users from a nearby server, reducing latency. Transparent to the end user.

### VPN (Virtual Private Network)
- Encrypts private data traversing a public network. Uses a concentrator/head-end device for encryption/decryption, often integrated into a firewall.

### QoS (Quality of Service)
- Traffic/packet shaping that controls bandwidth usage and data rates. Prioritizes important applications over less critical ones. Managed by routers, switches, and firewalls.

### TTL (Time to Live)
- A value that limits how long data exists in a network. In IP, decremented by 1 at each router hop; packet is dropped at 0. In DNS, specifies how long a cache entry is valid.

### DNS (Domain Name System)
- Translates human-readable domain names into IP addresses. Uses a hierarchical, distributed database with root servers, TLDs, and authoritative name servers. Operates on udp/53 (and tcp/53 for large transfers).

### NFV (Network Function Virtualization)
- Replaces physical network devices (routers, switches, firewalls, etc.) with virtual versions managed from a hypervisor.

### VPC (Virtual Private Cloud)
- A pool of resources created in a public cloud. Connected to other VPCs via a transit gateway. Secured using VPNs, NAT gateways, and VPC endpoints.

### Cloud Deployment Models
- **Public**: Available to everyone over the Internet. **Private**: Your own virtualized local data center. **Hybrid**: A mix of public and private.

### SaaS (Software as a Service)
- On-demand software with no local installation. The provider manages data and applications. Examples: Google Mail, Office 365.

### IaaS (Infrastructure as a Service)
- Outsourced hardware/equipment. The customer manages the OS, applications, and security. Example: web server providers.

### PaaS (Platform as a Service)
- The provider manages the platform; the customer handles development. No servers or maintenance teams required. Example: Salesforce.com.

### TCP (Transmission Control Protocol)
- A connection-oriented, OSI Layer 4 protocol. Provides reliable delivery, error recovery, reordering of data, and flow control. Requires a formal connection setup and teardown.

### UDP (User Datagram Protocol)
- A connectionless, OSI Layer 4 protocol. No formal connection, no error recovery, no reordering, and no flow control. The sender determines the amount of data sent.

### Non-ephemeral Ports
- Permanent port numbers from 0 through 1,023. Usually assigned to well-known servers and services.

### Ephemeral Ports
- Temporary port numbers from 1,024 through 65,535. Assigned in real-time by the client for a communication session.

### FTP (File Transfer Protocol)
- Transfers files between systems. Uses tcp/20 (active mode data) and tcp/21 (control). Requires username/password authentication.

### SSH (Secure Shell)
- Provides encrypted console communication on tcp/22. Also used by SFTP for secure file transfers.

### SFTP (Secure File Transfer Protocol)
- Encrypted file transfers using SSH on tcp/22. Provides file system functionality including directory listings and resume of interrupted transfers.

### Telnet
- Provides remote console access on tcp/23. Communication is sent in cleartext — not recommended for production systems.

### SMTP (Simple Mail Transfer Protocol)
- Used for server-to-server email transfer. tcp/25 (plaintext) and tcp/587 (TLS encrypted). Also used by devices to send mail to a mail server.

### DHCP (Dynamic Host Configuration Protocol)
- Automatically configures IP address, subnet mask, default gateway, and other options for network clients. Uses udp/67 (server) and udp/68 (client).

### TFTP (Trivial File Transfer Protocol)
- A very simple file transfer application on udp/69. No authentication; used for transferring configuration files during device startup.

### HTTP (Hypertext Transfer Protocol)
- Communication protocol for web browsers on tcp/80. Sends data in cleartext.

### HTTPS (Hypertext Transfer Protocol Secure)
- HTTP encrypted with SSL/TLS on tcp/443.

### NTP (Network Time Protocol)
- Synchronizes clocks across network devices on udp/123. Critical for log files, authentication, and outage correlation. Accurate to less than 1 millisecond on a local network.

### SNMP (Simple Network Management Protocol)
- Gathers statistics from and manages network devices on udp/161. SNMPv1: cleartext. SNMPv2c: bulk transfers, still cleartext. SNMPv3: message integrity, authentication, and encryption. SNMP traps use udp/162 for alerts.

### LDAP (Lightweight Directory Access Protocol)
- Stores and retrieves information in a network directory on tcp/389. Used in Windows Active Directory and other directory services.

### LDAPS (LDAP Secure)
- LDAP over SSL on tcp/636. A non-standard but common implementation.

### SMB (Server Message Block)
- Microsoft protocol for file and printer sharing (also called CIFS). Operates on tcp/445. Supports file locking and access rights integration.

### Syslog
- A standard for message logging from diverse systems to a central log collector. Uses udp/514. Integrated into SIEMs.

### RDP (Remote Desktop Protocol)
- Shares a desktop or application from a remote location on tcp/3389. Available on Windows, macOS, Linux, and others.

### SIP (Session Initiation Protocol)
- Sets up and manages VoIP sessions on tcp/5060 and tcp/5061. Also supports video conferencing, instant messaging, and file transfer.

### MS-SQL (Microsoft SQL Server)
- Microsoft's relational database server, using tcp/1433 for connections.

### ICMP (Internet Control Message Protocol)
- Carries network control messages; not used for data transfer. Used by ping and traceroute. Can report errors like TTL expired or unreachable network.

### GRE (Generic Routing Encapsulation)
- Creates a tunnel between two endpoints by encapsulating traffic inside IP. No built-in encryption.

### IPSec (Internet Protocol Security)
- Provides authentication and encryption at OSI Layer 3 for every packet. Uses two core protocols: AH (Authentication Header) and ESP (Encapsulating Security Payload).

### AH (Authentication Header)
- An IPSec protocol that provides data integrity via a hash of the packet and a shared key. Does not encrypt the payload.

### ESP (Encapsulating Security Payload)
- An IPSec protocol that encrypts the packet and provides integrity checking. Uses 3DES or AES for encryption.

### IKE (Internet Key Exchange)
- Negotiates encryption keys for IPSec without sending them across the network. Builds a Security Association (SA). Phase 1 uses Diffie-Hellman (udp/500); Phase 2 negotiates ciphers and key sizes.

### ISAKMP (Internet Security Association and Key Management Protocol)
- Used in IKE Phase 1 to establish the initial secure channel for key exchange.

### Unicast
- One-to-one communication between a single sender and a single receiver. Used for web browsing and file transfers.

### Multicast
- One-to-many-of-many delivery of information to interested systems. Used for multimedia delivery, stock exchanges, and routing updates.

### Anycast
- One-to-one-of-many; a single destination IP with multiple paths to different endpoints. Packets are delivered to the closest interface. Used for Anycast DNS.

### Broadcast
- One-to-all communication within a broadcast domain. Used for ARP requests and routing updates. Not used in IPv6 (replaced by multicast).

### 802.11 (Wi-Fi)
- IEEE standard for wireless networking. Wi-Fi 5 = 802.11ac, Wi-Fi 6 = 802.11ax, Wi-Fi 7 = 802.11be. Operates on 2.4 GHz, 5 GHz, and 6 GHz bands.

### LTE (Long Term Evolution)
- A 4G wireless standard. Converged standard for GSM and CDMA. Supports download rates of 150 Mbit/s. LTE-A supports 300 Mbit/s.

### 5G
- Fifth generation cellular networking launched in 2020. Speeds up to 10 Gbps at higher frequencies; 100–900 Mbit/s at lower. Major impact on IoT.

### Satellite Networking
- Non-terrestrial communication with high cost and high latency (~250 ms up and down). Speeds typically 100 Mbit/s down, 5 Mbit/s up.

### Ethernet
- The most popular networking technology. Defined by IEEE 802.3. Uses twisted-pair copper or fiber. Standard naming format: Speed/Signal/Media (e.g., 1000BASE-T).

### Multimode Fiber
- Short-range fiber communication up to 2 km. Uses an inexpensive LED light source. Larger core diameter.

### Single-mode Fiber
- Long-range fiber communication up to 100 km without processing. Uses an expensive laser light source. Smaller core diameter.

### UTP (Unshielded Twisted Pair)
- The most common twisted-pair copper cabling. No additional shielding. Uses balanced pairs to cancel interference.

### STP (Shielded Twisted Pair)
- Twisted-pair cabling with additional metal shielding around each pair and/or the overall cable. Requires grounding. Protects against interference.

### Coaxial Cable
- Cable with two conductors sharing a common axis. RG-6 used for cable TV and high-speed Internet (DOCSIS).

### Twinaxial Cable (Twinax)
- Two inner conductors used in 10 Gigabit Ethernet SFP+ cables. Full duplex, up to 5 meters. Low cost and low latency.

### Plenum-rated Cable
- Fire-rated cable with FEP or low-smoke PVC jacket. Required in plenum spaces (air-handling areas) and risers. Less flexible than standard PVC cable.

### Transceiver
- A combined transmitter and receiver in a single component. Provides a modular interface for connecting different media types.

### SFP (Small Form-factor Pluggable)
- Provides 1 Gbit/s fiber or copper connectivity in a modular form.

### SFP+ (Enhanced Small Form-factor Pluggable)
- Same physical size as SFP; supports data rates up to 16 Gbit/s. Common with 10 Gigabit Ethernet.

### QSFP (Quad Small Form-factor Pluggable)
- Four-channel SFP = 4 Gbit/s. QSFP+ = four-channel SFP+ = 40 Gbit/s. Combines four SFPs into one transceiver.

### SC Connector (Subscriber Connector)
- A square fiber connector that pushes and locks in place. Popular in data centers.

### LC Connector (Local Connector)
- A compact fiber connector that locks with a clip and is released by pressing. Also called Lucent Connector or Little Connector.

### ST Connector (Straight Tip)
- A fiber connector that uses a bayonet-style twist-and-lock mechanism (stick and twist).

### MPO (Multi-fiber Push On)
- A fiber connector that carries 12 fibers in a single connector. Push to lock, pull to unlock. Also called MTP (a Corning brand).

### RJ11 Connector
- A 6-position, 2-conductor (6P2C) modular connector used for telephone and DSL connections.

### RJ45 Connector
- An 8-position, 8-conductor (8P8C) modular connector used for Ethernet.

### F-Connector
- A threaded coaxial cable connector used in cable TV infrastructure and cable modems (DOCSIS).

### BNC Connector (Bayonet Neill-Concelman)
- A coaxial cable connector that twists and locks in place. Common with twinax, DS3 WAN links, and video connections.

### Star / Hub and Spoke Topology
- All devices connect to a central device (e.g., a switch). The most common topology for small and large networks.

### Mesh Topology
- Multiple links to the same location (fully or partially connected). Provides redundancy, fault tolerance, and load balancing. Common in WANs.

### Spine and Leaf Architecture
- Each leaf switch connects to every spine switch, and vice versa. Leaf switches don't connect to each other. Provides simple cabling, redundancy, and fast performance.

### Three-Tier Architecture
- A hierarchical network design with Core (center, servers/databases), Distribution (midpoint, path management), and Access (user connections) layers.

### Collapsed Core
- Combines the Core and Distribution layers into one. Cost-effective for small to medium networks but has scalability limitations.

### East-West Traffic
- Traffic between devices within the same data center. Relatively fast response times.

### North-South Traffic
- Traffic going into or out of a data center to an external device. Requires a different security posture than east-west traffic.

### IPv4 Address
- A 32-bit address used to identify devices on a network. Expressed in dotted-decimal notation (e.g., 192.168.1.1). Configured with a subnet mask and default gateway.

### Subnet Mask
- Used by a device to determine which subnet it is on. Defines the network and host portions of an IP address.

### Default Gateway
- The router IP address used to communicate outside the local subnet. Must be an IP address on the local subnet.

### Loopback Address
- A self-referencing IPv4 address range from 127.0.0.1 to 127.255.255.254 used to test local TCP/IP configuration.

### APIPA (Automatic Private IP Addressing)
- A link-local address automatically assigned when DHCP is unavailable. Range: 169.254.1.0 to 169.254.254.255. Only communicates with other local devices; not routed.

### RFC 1918 Private IP Addresses
- Private IPv4 address ranges not routable on the Internet: 10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16.

### CIDR (Classless Inter-Domain Routing)
- Created in 1993 to remove classful subnet mask restrictions. Uses slash notation (e.g., 192.168.1.0/24) to define the number of network bits.

### VLSM (Variable Length Subnet Masks)
- Allows different subnet masks within the same classful network. Enables efficient use of address space.

### IPv6
- A 128-bit addressing system with 340 undecillion possible addresses. Resolves IPv4 exhaustion. Uses double-colon (::) to abbreviate groups of zeros.

### Dual-Stack Routing
- Running IPv4 and IPv6 simultaneously on the same interface. Maintains separate routing tables and dynamic routing protocols for each.

### NAT64
- Translates between IPv4 and IPv6 addresses to allow interoperability. Requires a NAT64-capable router and DNS64 server.

### SDN (Software Defined Networking)
- Separates network functions into Data Plane (forwarding), Control Plane (routing/session tables), and Management Plane (configuration via SSH/API). Enables cloud-scale network management.

### SD-WAN (Software Defined WAN)
- A cloud-optimized WAN that is application-aware, transport-agnostic, and zero-touch provisioned. Uses central policy management and routes traffic via the optimal path.

### VXLAN (Virtual Extensible LAN)
- Designed for large service providers. Supports over 16 million virtual networks (vs. ~4,000 for VLANs). Tunnels Layer 2 frames across a Layer 3 network.

### Zero Trust
- A security model where nothing is inherently trusted. Every device, person, and process must be verified. Relies on MFA, encryption, permissions, monitoring, and analytics.

### SASE (Secure Access Service Edge)
- A next-generation VPN that places security technologies in the cloud close to existing cloud services. SASE clients are installed on all devices for streamlined, automatic secure access.

### IaC (Infrastructure as Code)
- Describes infrastructure (servers, networks, applications) as definition files. Enables versioned, consistent, repeatable deployments — critical for cloud computing.

### Static Routing
- Manually configured routes in a routing table. Easier to manage on small networks, more secure, but does not automatically reroute on failure.

### Dynamic Routing
- Routers automatically share and update routing information in near real-time. More scalable but requires CPU, memory, and bandwidth overhead.

### EIGRP (Enhanced Interior Gateway Routing Protocol)
- A Cisco-proprietary interior routing protocol. Fast convergence, loop-free, and efficient use of bandwidth.

### OSPF (Open Shortest Path First)
- An open-standard link-state interior gateway protocol. Used within a single autonomous system. Routes based on link cost; lowest-cost path wins.

### BGP (Border Gateway Protocol)
- An exterior gateway protocol that connects different autonomous systems. The primary routing protocol of the Internet.

### Administrative Distance
- A value used by a router to determine which routing protocol has priority when multiple protocols know a route to the same destination.

### FHRP (First Hop Redundancy Protocol)
- Provides a virtual IP address (VIP) for the default gateway. If one router fails, another takes over seamlessly.

### NAT (Network Address Translation)
- Translates private IP addresses to a public IP address (and vice versa). Allows many devices to share a single public IP. Types include Static NAT and PAT/NAT Overload.

### PAT (Port Address Translation) / NAT Overload
- A form of NAT that maps many private IP addresses to a single public IP using different port numbers to distinguish sessions.

### VLAN (Virtual Local Area Network)
- A logical grouping of devices into the same broadcast domain regardless of physical location. Configured on switches using the VLAN database.

### 802.1Q Trunking
- Adds a VLAN tag (12-bit VLAN ID) to Ethernet frames so multiple VLANs can travel over a single trunk link between switches. Supports up to 4,094 VLANs.

### Native VLAN
- The VLAN on a trunk that does not receive an 802.1Q tag. Must match on both sides of a trunk link.

### Layer 3 Switch
- A switch with built-in routing functionality. Uses Switched Virtual Interfaces (SVIs) to route between VLANs internally.

### LACP (Link Aggregation Control Protocol)
- Combines multiple physical interfaces into one logical interface for increased bandwidth and redundancy. Part of link aggregation (port bonding/LAG).

### MTU (Maximum Transmission Unit)
- The maximum IP packet size that can be transmitted without fragmentation. Default Ethernet MTU is 1,500 bytes.

### Jumbo Frames
- Ethernet frames with more than 1,500 bytes of payload, up to 9,216 bytes MTU. Increases transfer efficiency but requires compatible hardware.

### STP (Spanning Tree Protocol)
- IEEE 802.1D standard that prevents switching loops by blocking redundant paths. Uses BPDUs to elect a root bridge and assign port roles.

### RSTP (Rapid Spanning Tree Protocol)
- IEEE 802.1w update to STP. Faster convergence (from 30–50 seconds to ~6 seconds). Backwards-compatible with 802.1D.

### STP Port States
- **Blocking**: Not forwarding, prevents loop. **Listening**: Not forwarding, cleaning MAC table. **Learning**: Not forwarding, building MAC table. **Forwarding**: Fully operational. **Disabled**: Admin turned off.

### SSID (Service Set Identifier)
- The name of a wireless network. Shared across multiple access points for seamless roaming.

### BSSID (Basic Service Set Identifier)
- The MAC address of a specific access point. Used by clients to distinguish between multiple APs sharing the same SSID.

### ESSID (Extended Service Set Identifier)
- A wireless network name shared across multiple access points to create a single roaming network.

### IBSS (Independent Basic Service Set)
- An ad hoc wireless network where two devices communicate directly without an access point.

### Captive Portal
- An authentication page that redirects users before granting network access. Common on public Wi-Fi. Requires credentials before allowing full web access.

### WPA (Wi-Fi Protected Access)
- Introduced in 2002 as a replacement for WEP. A short-term solution to run on existing hardware.

### WPA2 (Wi-Fi Protected Access 2)
- Introduced in 2004. Uses CCMP (AES encryption + CBC-MAC for message integrity). The most common wireless security standard.

### WPA3 (Wi-Fi Protected Access 3)
- Introduced in 2018. Uses GCMP (AES encryption + GMAC for message integrity). Stronger than WPA2.

### WEP (Wired Equivalent Privacy)
- An older, deprecated wireless security standard with serious cryptographic weaknesses. Do not use.

### Band Steering
- Directs capable clients to the optimal frequency band (e.g., 5 GHz over 2.4 GHz) for better performance.

### DFS (Dynamic Frequency Selection)
- Part of 802.11h. Allows an access point to automatically switch to an unused frequency to avoid conflicts.

### MDF (Main Distribution Frame)
- The central point of the network, usually in a data center. Termination point for WAN links connecting inside to outside.

### IDF (Intermediate Distribution Frame)
- An extension of the MDF. Connects users to the network via uplinks and workgroup switches. Common in medium to large organizations.

### Rack Unit (U)
- A unit of measurement for equipment rack height. 1U = 1.75 inches. A common rack is 42U tall and 19 inches wide.

### UPS (Uninterruptible Power Supply)
- Provides short-term backup power during blackouts, brownouts, and surges. Types: Offline/Standby, Line-interactive, On-line/Double-conversion.

### PDU (Power Distribution Unit)
- Provides multiple power outlets in a rack. Often includes monitoring and control for individual outlets and power capacity management.

### PoE (Power over Ethernet)
- Delivers electrical power over Ethernet cable. PoE: 15.4W. PoE+: 25.5W. PoE++: up to 71.3W.

### SLA (Service Level Agreement)
- A contract defining minimum service terms (e.g., uptime, response time) between a service provider and customer.

### IPAM (IP Address Management)
- A system for planning, tracking, and configuring DHCP and IP address usage. Reports on shortages and controls reservations.

### Life Cycle Management
- Managing hardware and software from deployment to end-of-life (EOL) and end-of-support (EOS). Includes patching, firmware updates, and decommissioning.

### Change Management
- A documented process for making changes to a network (software upgrades, firewall configs, switch ports). Includes frequency, duration, rollback procedures, and change control windows.

### SNMP OID (Object Identifier)
- A unique identifier for each variable in the SNMP Management Information Base (MIB). Referenced by name or number to query specific device statistics.

### SNMP Trap
- An alert or notification sent from a monitored device to an SNMP manager on udp/162 when a threshold is met.

### SIEM (Security Information and Event Management)
- Aggregates and correlates security logs from multiple sources. Provides real-time alerts, long-term storage, data correlation, and forensic analysis.

### NetFlow
- A standard method for collecting traffic statistics from all network flows. Uses a probe to watch traffic and sends summary records to a collector.

### Port Mirroring (SPAN)
- Copies traffic from one or more interfaces to a monitoring device. Used for packet capture, IDS, and performance monitoring.

### LLDP (Link Layer Discovery Protocol)
- A vendor-neutral protocol for discovering neighboring network devices and their capabilities.

### CDP (Cisco Discovery Protocol)
- A proprietary Cisco protocol for discovering neighboring Cisco devices.

### API (Application Programming Interface)
- Allows software to interact with third-party devices and services (cloud, firewalls, operating systems). Used for automating configuration and management.

### Disaster Recovery Plan (DRP)
- A detailed plan for resuming operations after a disaster. Includes backups, off-site replication, and remote site options.

### RTO (Recovery Time Objective)
- The target time to restore a service after a disaster and return to a specified service level.

### RPO (Recovery Point Objective)
- The maximum acceptable amount of data loss measured in time. Determines how far back restored data can go.

### MTTR (Mean Time to Repair)
- The average time required to diagnose and fix a failed component or system.

### MTBF (Mean Time Between Failures)
- A prediction of the average time between system outages or component failures.

### Cold Site
- A disaster recovery site with no hardware, no data, and no staff. Requires the most time to activate.

### Warm Site
- A disaster recovery site with basic rack space and hardware ready; you bring the software and data.

### Hot Site
- An exact replica of the primary site with hardware, software, and data constantly synchronized. Can be activated nearly immediately.

### Active-Passive (Failover)
- Two devices are configured, but only one operates at a time. The passive takes over if the active fails.

### Active-Active
- Both devices operate simultaneously, sharing the load. More complex to design and manage.

### DHCP Process (DORA)
- **Discover**: Client broadcasts to find DHCP servers. **Offer**: Server offers an IP address. **Request**: Client requests a specific offer. **Acknowledge**: Server confirms the lease.

### DHCP Lease
- A temporary IP address assignment. Includes T1 (renewal at 50% of lease time) and T2 (rebinding at 87.5% of lease time) timers.

### DHCP Scope
- A pool of IP addresses available for assignment, including subnet mask, lease duration, and options like DNS server and default gateway.

### DHCP Reservation (Static DHCP)
- An IP address permanently assigned to a specific MAC address by the DHCP server.

### DHCP Relay
- A device (usually a router) that forwards DHCP broadcast requests across subnet boundaries to a DHCP server on another network.

### SLAAC (Stateless Address Autoconfiguration)
- An IPv6 method to automatically configure a device's IP address without a DHCP server. Uses the network prefix from Router Advertisements combined with a modified EUI-64 or random address.

### NDP (Neighbor Discovery Protocol)
- An IPv6 protocol that replaces ARP. Handles neighbor MAC discovery, SLAAC, Duplicate Address Detection (DAD), and router discovery. Uses multicast over ICMPv6.

### DAD (Duplicate Address Detection)
- An NDP process that ensures a newly configured IPv6 address is not already in use on the network.

### FQDN (Fully Qualified Domain Name)
- The complete domain name that specifies an exact location in the DNS hierarchy (e.g., www.professormesser.com).

### DNS Forward Lookup
- Providing a hostname/FQDN to a DNS server and receiving an IP address in return.

### DNS Reverse Lookup
- Providing an IP address to a DNS server and receiving a hostname/FQDN in return. Uses PTR records.

### DNS SOA Record (Start of Authority)
- Describes the DNS zone details including the serial number, refresh/retry/expiry timeframes, and TTL.

### DNS A Record
- Maps a hostname to an IPv4 address. The most common DNS query type.

### DNS AAAA Record
- Maps a hostname to an IPv6 address.

### DNS CNAME Record (Canonical Name)
- Creates an alias that points to another hostname. One physical server, multiple service names.

### DNS MX Record (Mail Exchanger)
- Specifies the mail server responsible for accepting email for a domain. Points to a hostname, not an IP.

### DNS NS Record (Name Server)
- Lists the authoritative name servers for a domain.

### DNS PTR Record (Pointer)
- The reverse of an A/AAAA record. Maps an IP address back to a hostname. Stored in a reverse map zone file.

### DNS TXT Record
- Human-readable text information stored in DNS. Used for SPF (Sender Policy Framework) and DKIM (DomainKeys Identified Mail) to prevent email spoofing.

### DNSSEC (Domain Name Security Extensions)
- DNS responses are digitally signed by the server to prevent spoofing and forgery.

### DNS over TLS (DoT)
- Encrypts DNS traffic using TLS/SSL on tcp/853.

### DNS over HTTPS (DoH)
- Sends DNS traffic inside HTTPS packets on tcp/443. Looks like normal web traffic.

### SPF (Sender Policy Framework)
- A DNS TXT record that specifies which mail servers are authorized to send email for a domain. Prevents mail spoofing.

### DKIM (DomainKeys Identified Mail)
- Digitally signs outgoing mail. The public key is stored in a DNS TXT record and validated by receiving mail servers.

### NTS (Network Time Security)
- An updated, authenticated version of NTP. Uses a TLS handshake for key exchange to ensure NTP responses can be trusted.

### PTP (Precision Time Protocol)
- Hardware-based time synchronization with nanosecond granularity. Used in industrial and financial applications.

### Site-to-Site VPN
- An always-on VPN that encrypts traffic between two fixed sites (e.g., two offices) through the public Internet.

### Client-to-Site VPN
- On-demand VPN access from a remote device using VPN client software to connect to a VPN concentrator.

### Clientless VPN
- A VPN tunnel established through an HTML5-compliant web browser without installing a separate VPN application.

### Split Tunnel
- A VPN configuration where only traffic destined for the VPN is sent through the tunnel; other traffic goes directly to the Internet.

### Full Tunnel
- A VPN configuration where all traffic is sent through the VPN tunnel regardless of destination.

### Jump Box (Jump Server)
- A highly secured, hardened device used to access secure network zones. Accessed via SSH/VPN; acts as a gateway to protected resources.

### In-band Management
- Managing a network device over the same network connection used for production traffic (e.g., SSH, web console).

### Out-of-band Management
- Managing a network device through a separate physical connection (e.g., serial/USB console, modem) independent of the production network.

### PKI (Public Key Infrastructure)
- Policies, procedures, hardware, software, and people for creating, distributing, managing, and revoking digital certificates.

### Digital Certificate
- Binds a public key to an entity with a digital signature. Validated by a Certificate Authority (CA).

### CA (Certificate Authority)
- A trusted third party that digitally signs certificates, establishing trust between a client and an unknown entity.

### Self-signed Certificate
- A certificate signed by your own internal CA rather than a public CA. Used for internal infrastructure that already trusts the CA.

### IAM (Identity and Access Management)
- Manages digital identities and their access rights. Includes authentication, authorization, and identity lifecycle management.

### Least Privilege
- Users and applications are granted only the minimum permissions necessary to complete their tasks.

### RBAC (Role-Based Access Control)
- Access rights are assigned based on a user's role in the organization rather than individually.

### Geofencing
- Automatically allows or restricts access to resources based on a user's physical location.

### AAA Framework (Authentication, Authorization, Accounting)
- **Identification**: Who you claim to be. **Authentication**: Prove your identity. **Authorization**: What you can access. **Accounting**: Track resource usage.

### SSO (Single Sign-On)
- Authenticate once and gain access to all assigned resources without re-entering credentials. Usually time-limited.

### RADIUS (Remote Authentication Dial-in User Service)
- A common AAA protocol for centralizing authentication for routers, switches, firewalls, VPNs, and 802.1X. Widely supported.

### TACACS+ (Terminal Access Controller Access-Control System Plus)
- A remote authentication protocol released as an open standard in 1993. More authentication request/response codes than TACACS. Not backwards compatible with older TACACS.

### LDAP (Lightweight Directory Access Protocol)
- A protocol for reading and writing directories over an IP network. Used in Active Directory. tcp/389.

### SAML (Security Assertion Markup Language)
- An open standard for authentication and authorization that allows authentication through a third party.

### MFA (Multifactor Authentication)
- Requires two or more different authentication factors: something you know, something you have, something you are, or somewhere you are.

### TOTP (Time-based One-Time Password)
- Generates a one-time password using a shared secret and the current time. Increments every 30 seconds. Used by Google, Microsoft, and Facebook.

### Honeypot
- A decoy system designed to attract attackers and observe their behavior without risking real systems.

### Honeynet
- A network of honeypots that simulates a real production environment to gather more intelligence on attacker behavior.

### CIA Triad
- The three fundamental security principles: **Confidentiality** (prevent unauthorized disclosure), **Integrity** (detect modifications), **Availability** (systems must be up and running).

### Vulnerability
- A weakness in a system that could allow unauthorized access or a security breach.

### Exploit
- Code or a method that takes advantage of a vulnerability to gain control of a system, modify data, or disable a service.

### GDPR (General Data Protection Regulation)
- EU regulation protecting personal data of EU citizens. Requires data to be stored within the EU and gives individuals rights over their data including the right to be forgotten.

### PCI DSS (Payment Card Industry Data Security Standard)
- A standard for protecting credit card data. Requires secure networks, data protection, vulnerability management, access controls, monitoring, and security policies.

### IoT (Internet of Things)
- Network-connected devices such as sensors, smart home devices, and wearables. Often has weak default security settings.

### IIoT (Industrial Internet of Things)
- IoT applied to industrial environments (machine-to-machine). Includes facility automation and industrial control systems.

### SCADA / ICS (Supervisory Control and Data Acquisition / Industrial Control System)
- Large-scale multi-site industrial systems controlling power, refining, manufacturing, and logistics. Requires extensive network segmentation.

### OT (Operational Technology)
- Hardware and software that manages industrial equipment (power grids, traffic lights, factories). Requires a more critical security posture than typical IT.

### BYOD (Bring Your Own Device)
- Policy allowing employees to use personal devices for work. Requires segmentation from the internal network.

### DoS (Denial of Service)
- An attack that forces a service to fail by overloading it or exploiting a vulnerability, making it unavailable to users.

### DDoS (Distributed Denial of Service)
- A DoS attack launched from many distributed systems (a botnet). Uses the combined resources of thousands/millions of machines.

### DDoS Amplification / Reflection
- Turns a small attack into a large one by bouncing traffic off third-party services (NTP, DNS, ICMP) that amplify the response.

### VLAN Hopping
- An attack that allows an attacker to access VLANs they are not authorized for. Methods include switch spoofing and double tagging.

### Switch Spoofing
- A VLAN hopping attack where an attacker pretends to be a switch by sending trunk negotiation traffic, establishing a trunk link.

### Double Tagging
- A VLAN hopping attack that crafts a packet with two VLAN tags, exploiting the native VLAN to reach a different VLAN. One-way trip only.

### MAC Flooding
- An attack that fills a switch's MAC address table with fake entries, causing the switch to flood all traffic to all ports like a hub.

### ARP Poisoning
- An on-path attack on a local subnet that sends fake ARP replies to associate the attacker's MAC address with a legitimate IP address.

### DNS Poisoning
- Corrupts a DNS server's cache or a client's hosts file to redirect users to a malicious server.

### On-path Attack (formerly Man-in-the-Middle)
- The attacker intercepts and potentially modifies traffic between two endpoints without either party knowing.

### Rogue DHCP Server
- An unauthorized DHCP server that assigns invalid or duplicate IP addresses, causing connectivity issues.

### Rogue Access Point
- An unauthorized wireless AP connected to a network. May be installed by an employee or attacker and creates a backdoor.

### Evil Twin
- A malicious AP configured to mimic a legitimate network. Used to intercept wireless traffic.

### Phishing
- A social engineering attack delivered via email or text that tricks users into revealing credentials or clicking malicious links.

### Shoulder Surfing
- Viewing another person's screen or keyboard to steal sensitive information.

### Tailgating / Piggybacking
- Gaining physical access to a restricted area by following an authorized person. Tailgating is without consent; piggybacking is with consent.

### Dumpster Diving
- Searching through discarded materials to find sensitive information.

### Malware
- Malicious software. Types include viruses, worms, ransomware, Trojans, rootkits, keyloggers, adware/spyware, bloatware, and logic bombs.

### ACL (Access Control List)
- A set of rules that allow or deny traffic based on source IP, destination IP, port number, time of day, or application.

### Firewall Rule (Implicit Deny)
- Firewall rules are processed top-to-bottom. More specific rules go first. Most firewalls have an implicit deny-all at the bottom.

### URL Filtering
- Allows or blocks traffic based on URLs or website categories. Often integrated into NGFWs.

### Content Filtering
- Controls traffic based on the actual content of data. Includes URL filtering, anti-virus, anti-malware, and inappropriate content blocking.

### Screened Subnet (DMZ)
- An additional security layer between the public Internet and private network. Public-facing resources are placed here.

### Security Zone
- A logical grouping of network areas (trusted, untrusted, screened, etc.) used to simplify and enforce security policies.

### Port Security
- Prevents unauthorized devices from connecting to a switch interface. Limits the number of allowed MAC addresses per port; violations disable the port.

### MAC Filtering
- Limits network access based on hardware (MAC) addresses. Can be bypassed by MAC address spoofing.

### 802.1X (Network Access Control)
- Requires authentication before granting network access, regardless of connection type (wired or wireless).

### NGFW (Next-Generation Firewall)
- A firewall that goes beyond port/protocol inspection to include application awareness, IPS, and deep packet inspection.

### Network Troubleshooting Methodology
- A structured approach: (1) Identify the problem, (2) Establish a theory, (3) Test the theory, (4) Plan of action, (5) Implement the solution, (6) Verify functionality, (7) Document findings.

### Attenuation
- Gradual loss of signal strength over distance through any medium (copper, fiber, or air).

### Crosstalk (XT)
- Signal leakage from one cable pair to another. Types: NEXT (Near End), FEXT (Far End), AXT (Alien from other cables).

### EMI (Electromagnetic Interference)
- Interference from electrical sources (power cords, fluorescent lights, motors) that disrupts copper cable signals.

### CRC Error (Cyclic Redundancy Check)
- A frame integrity error. The receiver recalculates the checksum and compares it to the original; a mismatch is a CRC error.

### Runts
- Ethernet frames smaller than 64 bytes. Often caused by collisions.

### Giants
- Ethernet frames larger than 1,518 bytes (or the configured maximum frame size).

### Auto-MDIX
- A feature that automatically corrects transposed transmit/receive wiring. Should not be relied upon.

### Error Disabled
- A switch port state where the interface is automatically disabled due to repeated violations (link flapping, port security violations, duplex mismatch). Requires manual re-enable.

### Duplex Mismatch
- A configuration error where one end of a link is set to half-duplex and the other to full-duplex. Causes poor performance and errors.

### STP Port Roles
- **Root Port**: Best path toward the root bridge. **Designated Port**: Forwards traffic away from root. **Blocked Port**: Prevents loops.

### BPDU (Bridge Protocol Data Unit)
- Messages sent between switches to share STP configuration and topology changes using MAC-layer multicasts.

### Gateway of Last Resort (Default Route)
- A static route to 0.0.0.0/0 used when no specific match exists in the routing table. Acts as a catch-all.

### Address Pool Exhaustion
- When a DHCP server runs out of IP addresses to assign, clients may receive APIPA addresses and have limited connectivity.

### Duplicate IP Address
- Two devices sharing the same IP address on a network. Causes intermittent connectivity as they "fight" for the address.

### Jitter
- The variation in delay between packets in a real-time stream (voice/video). Excessive jitter causes choppy communication.

### Latency
- The delay between a request and a response. Caused by processing, queuing, and distance (laws of physics).

### Packet Loss
- Frames that are dropped due to congestion, corruption, or interface errors. Requires retransmission and degrades performance.

### Congestion
- Occurs when network traffic exceeds available bandwidth, causing queuing, buffering, and potential packet drops.

### Bottleneck
- The slowest component in a series of technologies that limits overall throughput of the system.

### Nmap (Network Mapper)
- A tool to discover network devices and open ports. Can identify operating systems, services, and versions. Also detects rogue systems.

### Wireshark / Protocol Analyzer
- A packet capture and analysis tool. Gathers frames on the network or wireless air, identifies traffic patterns, and verifies security controls.

### tcpdump
- A command-line packet capture tool available on Unix/Linux/macOS. Captures in standard pcap format.

### ping
- Tests IP reachability using ICMP echo requests and replies. `ping -t` pings continuously; `ping -n <count>` sends a specific number.

### traceroute / tracert
- Traces the route a packet takes to a destination using ICMP TTL Exceeded messages. Identifies each hop along the path.

### nslookup / dig
- Command-line tools for querying DNS servers to look up IP addresses and other DNS records.

### netstat
- Displays active network connections, listening ports, and network statistics. `netstat -a` shows all connections.

### ipconfig / ifconfig / ip
- Tools for viewing and managing IP configuration on Windows (ipconfig), Linux legacy (ifconfig), and modern Linux (ip address).

### arp
- Displays and modifies the local ARP table (IP-to-MAC address mappings). `arp -a` views the current table.

### Tone Generator / Inductive Probe
- A tool pair used to trace cables. The generator puts an analog tone on the wire; the probe detects it without touching the copper.

### Cable Tester
- Tests cable continuity and wire mapping. Identifies missing pins or crossed wires.

### Visual Fault Locator
- Shines a bright light through optical fiber to identify breaks or damage in the fiber jacket.

### Spectrum Analyzer
- A hardware tool that analyzes wireless frequencies to identify interference sources and channel usage.

### CDP (Cisco Discovery Protocol)
- Proprietary Cisco Layer 2 protocol for discovering neighboring Cisco devices and their capabilities.

### show mac-address-table
- A switch command that displays the MAC address table, showing which MAC addresses are associated with which interfaces.

### show route
- A router command that displays the current routing table, including dynamic and static routes.

### show interface
- Displays the status, configuration, and error statistics (CRC, runts, giants, drops) for a network interface.

### show config
- Displays the current running configuration or stored configuration of a network device.

### show arp
- Displays the ARP table (IP-to-MAC address mappings) on a network device.

### show vlan
- Displays VLAN assignments and configurations for switch interfaces.

### show power
- Displays power supply status and Power over Ethernet (PoE) usage and remaining capacity.