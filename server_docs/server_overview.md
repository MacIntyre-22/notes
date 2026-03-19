# Server Tech Stack
```table-of-contents
```

## Operating System

**Ubuntu Server 22.04 LTS**
The base operating system running on the server. Headless (no desktop environment), managed entirely via SSH from other devices. All services run on top of this.

-----

## Containerization

**Docker**
The container engine that runs all services on the server. Each service runs in its own isolated container with its own dependencies, meaning nothing interferes with anything else. Containers are defined with images and can be started, stopped, and removed independently.

**Docker Compose / Stacks**
Used for containers that require more complex configuration such as special flags, privileges, or multiple services. Written as YAML and deployed through Portainer’s Stacks feature.

-----

## Container Management

**Portainer**
A web-based UI for managing Docker. Handles container creation, configuration, starting and stopping, log viewing, volume management, and network management — all from a browser at `http://192.168.2.43:9000`. Eliminates the need to run Docker commands in the terminal for day-to-day container management.

All containers are assigned to a shared Docker network called `npm-network` during creation so they can communicate with each other and with Nginx Proxy Manager by container name.

-----

## Reverse Proxy & SSL

**Nginx Proxy Manager**
Sits in front of all web-facing containers and handles incoming traffic on ports 80 and 443. Routes requests to the correct container based on the domain or subdomain. Also handles SSL certificate generation and renewal automatically via Let’s Encrypt. Adding a new web service is as simple as adding a new Proxy Host entry in the browser UI pointing to the container name and its internal port.

-----

## DNS & Domain Management

**Cloudflare**
Manages DNS for the domain. All subdomains are configured as A records pointing to the server’s public IP. Cloudflare also provides Zero Trust Access (Cloudflare Access) which adds an authentication layer in front of any subdomain — requiring email verification before traffic reaches the server at all.

-----

## Version Control & CI/CD

**Forgejo**
A self-hosted Git server with a web UI accessible at `https://git.benmacintyre.net`. Hosts all private repositories including code projects and notes. Provides a GitHub-like interface for browsing repos, viewing commit history, and editing files directly in the browser. Public projects are mirrored to GitHub separately.

**Forgejo Actions Runner**
Runs as a systemd service directly on the host machine (not in a container) so it has full access to the host filesystem. Executes CI/CD workflows defined in `.forgejo/workflows/deploy.yml` inside each repo. Configured with the `self-hosted` label so workflows run natively on the server rather than inside a container.

The standard deploy workflow for any web project runs a `git pull` into the project’s www folder on push to main, which Apache picks up instantly via its bind mount.

-----

## File Storage & Access

**SSH / SFTP**
Built into Ubuntu Server via OpenSSH. Runs on port 22 (standard) and exposes SFTP for file transfer. Used to mount the server’s storage folder as a network drive on client devices. No extra service required — SFTP is available the moment SSH is running.

**Filebrowser**
A lightweight web-based file manager running as a Docker container. Provides a browser UI at `https://files.benmacintyre.net` for browsing, uploading, and downloading files from the server’s storage folder. Both SFTP and Filebrowser point at the same folder on disk — `/home/bmacintyre/server_storage`.

-----

## Dashboard

**Homarr**
A home server dashboard running as a Docker container. Provides a central browser-based UI showing all running services as tiles with quick links, live Docker container status via the Docker socket integration, and system resource monitoring via the Dashdot integration.

**Dashdot**
A lightweight system stats service running as a Docker container with privileged access to host system metrics. Exposes CPU, RAM, disk, and network usage which Homarr pulls and displays on the dashboard.

-----

## Web Server

**Apache (httpd)**
Used to serve web projects. Each project runs as its own Apache container with a bind mount pointing to the project’s folder under `/home/bmacintyre/www/`. When Forgejo Actions deploys new files into that folder, Apache serves them immediately with no restart required. New projects follow a standard setup: Apache container in Portainer, proxy host in NPM, DNS record in Cloudflare.

-----

## Network Summary

| Service           | Access                     | Port          |
| ----------------- | -------------------------- | ------------- |
| Portainer         | Local only                 | 9000          |
| Filebrowser       | Public (Cloudflare Access) | 8080 internal |
| Forgejo           | Public (Cloudflare Access) | 3000 internal |
| Homarr            | Local only                 | 7575 internal |
| Dashdot           | Local only                 | 3001 internal |
| Apache containers | Public via NPM             | 80 internal   |
| SSH / SFTP        | Local only                 | 22            |
| Forgejo SSH       | Local only                 | 2222          |