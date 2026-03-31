# Log Viewer
An app for your security logs all in one place.

```table-of-contents
```

## Overview
An app that views a directory of pooled security logs from a server. It monitors this directory for logs from any application you want and produces a ticket system for checks.

## Ticket System
- generate tickets from parsing logs
- a ticket may include:
	- date info
	- device info
	- app info (the logging app used)
	- priority
	- name, a title about the issue
	- description
	- short description

## Log Parsing
[pygrok](https://pypi.org/project/pygrok/)
- basic log parsing for know formats
- produces a ticket for every log
- not all tickets are dashboarded
- High to low priority logs are dashboarded

## AI
- recommended option is to import a model into the app
- additional feature is it can provide fix ideas.
- Ai can be prompt engineered to start
- fed existing logs as context over time


## Network Overview
[python-nmap](https://pypi.org/project/python-nmap/)
- would use nmap to scan for devices and auto add them 
	- restricted to LAN
	- wouldn't work with separate vlans
- option to manually add and remove devices
- **Device tagging/labeling** — manually label devices ("John's laptop", "NAS", "IoT camera") so events show friendly names instead of just IPs
- **Last seen / online status** — ping devices on a schedule, show online/offline on the dashboard
- **Port history** — track when new ports open on a device, alert if something unexpected appears
- **Vendor lookup** — MAC address OUI lookup tells you the manufacturer automatically (Apple, Dell, TP-Link etc.)
