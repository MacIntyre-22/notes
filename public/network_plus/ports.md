# Common Ports

- [Common Ports](#common-ports)
  - [Lots of Ports](#lots-of-ports)
- [Common Ports Reference](#common-ports-reference)
    - [FTP](#ftp)
    - [SSH](#ssh)
    - [Telnet](#telnet)
    - [SMTP](#smtp)
    - [DNS](#dns)
    - [DHCP](#dhcp)
    - [TFTP](#tftp)
    - [HTTP](#http)
    - [Kerberos](#kerberos)
    - [POP3](#pop3)
    - [NTP](#ntp)
    - [NetBIOS](#netbios)
    - [IMAP](#imap)
    - [SNMP](#snmp)
    - [LDAP](#ldap)
    - [HTTPS](#https)
    - [SMB](#smb)
    - [SMTP (TLS)](#smtp-tls)
    - [Syslog](#syslog)
    - [SMTPS / SMTP (STARTTLS)](#smtps--smtp-starttls)
    - [LDAPS](#ldaps)
    - [FTP (Implicit TLS)](#ftp-implicit-tls)
    - [FTPS (Data)](#ftps-data)
    - [IMAP (TLS)](#imap-tls)
    - [POP3 (TLS)](#pop3-tls)
    - [OpenVPN](#openvpn)
    - [MSSQL](#mssql)
    - [Oracle DB](#oracle-db)
    - [PPTP](#pptp)
    - [MySQL / MariaDB](#mysql--mariadb)
    - [RDP](#rdp)
    - [XMPP](#xmpp)
    - [PostgreSQL](#postgresql)
    - [VNC](#vnc)
    - [HTTP Alt](#http-alt)
    - [HTTPS Alt](#https-alt)

## Lots of Ports
- Non-ephemeral ports – permanent port numbers
  - Ports 0 through 1,023
- Ephemeral ports – temporary port numbers
  - Ports 1,024 through 65,535
  - Determined in real-time by the client

# Common Ports Reference

### FTP
- tcp/20 (active mode data), tcp/21 (control)

### SSH
- tcp/22

### Telnet
- tcp/23

### SMTP
- tcp/25

### DNS
- tcp/53, udp/53

### DHCP
- udp/67 (server), udp/68 (client)

### TFTP
- udp/69

### HTTP
- tcp/80

### Kerberos
- tcp/88, udp/88

### POP3
- tcp/110

### NTP
- udp/123

### NetBIOS
- udp/137 (name service), udp/138 (datagram), tcp/139 (session)

### IMAP
- tcp/143

### SNMP
- udp/161 (agent), udp/162 (trap)

### LDAP
- tcp/389, udp/389

### HTTPS
- tcp/443

### SMB
- tcp/445

### SMTP (TLS)
- tcp/465

### Syslog
- udp/514

### SMTPS / SMTP (STARTTLS)
- tcp/587

### LDAPS
- tcp/636

### FTP (Implicit TLS)
- tcp/990

### FTPS (Data)
- tcp/989

### IMAP (TLS)
- tcp/993

### POP3 (TLS)
- tcp/995

### OpenVPN
- udp/1194, tcp/1194

### MSSQL
- tcp/1433, udp/1434

### Oracle DB
- tcp/1521

### PPTP
- tcp/1723

### MySQL / MariaDB
- tcp/3306

### RDP
- tcp/3389

### XMPP
- tcp/5222 (client), tcp/5269 (server)

### PostgreSQL
- tcp/5432

### VNC
- tcp/5900

### HTTP Alt
- tcp/8080

### HTTPS Alt
- tcp/8443