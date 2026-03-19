# Server Tech Stack
```table-of-contents
```

## Operating System

**Ubuntu Server 22.04 LTS**
The base operating system running on the server. Headless (no desktop environment), managed entirely via SSH or webUI from other devices. All services run on top of this.

-----

## Containerization

**Docker**
The container engine that runs all services on the server. Each service runs in its own isolated container with its own dependencies, meaning nothing interferes with anything else. Containers are defined with images and can be started, stopped, and removed independently.

**Docker Compose / Stacks**
Used for containers that require more complex configuration such as special flags, privileges, or multiple services. Written as YAML and deployed through Portainer’s Stacks feature.

-----

## Container Management

**Portainer**
A web-based UI for managing Docker. Handles container creation, configuration, starting and stopping, log viewing, volume management, and network management — all from a browser. Eliminates the need to run Docker commands in the terminal for day-to-day container management.

All containers are assigned to a shared Docker network  during creation so they can communicate with each other and with Nginx Proxy Manager by container name.

-----

## Reverse Proxy & SSL

**Nginx Proxy Manager**
Sits in front of all web-facing containers and handles incoming traffic on ports 80 and 443. Routes requests to the correct container based on the domain or subdomain. Also handles SSL certificate generation and renewal automatically via Let’s Encrypt. Adding a new web service is as simple as adding a new Proxy Host entry in the browser UI pointing to the container name and its internal port.

-----

## DNS & Domain Management

**Cloudflare**
Manages DNS for the domain. All subdomains are configured as A records pointing to the server’s public IP.

Cloudflares policies are implemented onto any apps that are public. You can create a Policy and apply it to each app you have that connects through Cloudflare. Some Policies that are set are email authentication and geolocation restrictions.

-----

## Version Control & CI/CD

**Forgejo**
A self-hosted Git server with a web UI. Hosts all private repositories including code projects and notes. Provides a GitHub-like interface for browsing repos, viewing commit history, and editing files directly in the browser. Public projects are mirrored to GitHub separately.

**Jenkins**
CI/CD pipeline setup through Jenkins with a web UI. Overkill for this server but makes development proccesses extremely easy. Used for apps developed and served on the server. Forgejo repos send a webhook once code is pushed to main to trigger Jenkins. 

-----

## File Storage & Access

**SSH / SFTP**
Built into Ubuntu Server via OpenSSH. Exposes SFTP for file transfer. Used to mount the server’s storage folder as a network drive on my devices. No extra service required, SFTP is available the moment SSH is running.

**Filebrowser**
A lightweight web-based file manager running as a Docker container. Provides a browser UI for uploading, and downloading files from the server’s storage folder. Both SFTP and Filebrowser point at the same folder on disk.

Filebrowser is meant for connection from anywhere whereas SFTP is meant for a faster connection when local. Makes for seemless file transfers when mounted into my other computers.

-----

## Dashboard

**Homarr**
A home server dashboard running as a Docker container. Provides a central browser-based UI showing all running services as tiles with quick links, live Docker container status via the Docker socket integration, and system resource monitoring via the Dashdot integration.

**Dashdot**
A lightweight system stats service running as a Docker container with privileged access to host system metrics. Exposes CPU, RAM, disk, and network usage which Homarr pulls and displays on the dashboard.

-----

## Network Summary

| Service       | Access                             |
| ------------- | ---------------------------------- |
| Filebrowser   | Public (Cloudflare Access)         |
| Forgejo       | Public (Cloudflare Access, Canada) |
| Homarr        | Public (Cloudflare Access)         |
| Radicale      | Public (Cloudflare Access)         |
| Portainer     | Local only                         |
| Dashdot       | Local only                         |
| SSH / SFTP    | Local only                         |
| Forgejo SSH   | Local only                         |
| Jenkins       | Local only                         |
| Jenkins Agent | Local only                         |
