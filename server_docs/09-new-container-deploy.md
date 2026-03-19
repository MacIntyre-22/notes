# Deploying a New Container & Domain

A repeatable guide for spinning up any new web project on the server.

---

## Step 1 — Create the project folder (terminal)
This is the only step that requires terminal.

```bash
mkdir -p /home/bmacintyre/www/projectname
```

---

## Step 2 — Create the container (Portainer)
Go to `http://192.168.1.10:9000`

1. Click **Containers → Add Container**
2. Fill in:
   - **Name**: `projectname`
   - **Image**: e.g. `httpd:latest`, `nginx:latest`, `node:latest`
   - **Port mapping**: pick any unused host port (8082, 8083, etc.) → container port `80`
3. Click **Volumes → map additional volume**:
   - Host: `/home/bmacintyre/www/projectname`
   - Container: `/usr/local/apache2/htdocs` (Apache) or `/usr/share/nginx/html` (Nginx)
4. Click **Network → select `npm-network`** from the dropdown
5. Set **Restart policy** to `Always`
6. Click **Deploy the container**

---

## Step 3 — Add DNS record (Cloudflare)
Go to `https://dash.cloudflare.com` → your domain → **DNS → Records → Add Record**

| Field | Value |
|---|---|
| Type | A |
| Name | subdomain (e.g. `project`) |
| Content | your home public IP |
| Proxy status | DNS only (grey cloud) |
| TTL | Auto |

Click **Save**.

---

## Step 4 — Add Proxy Host (Nginx Proxy Manager)
Go to `http://192.168.1.10:81`

1. Click **Proxy Hosts → Add Proxy Host**
2. **Details tab**:
   - Domain Name: `subdomain.benmacintyre.net`
   - Scheme: `http`
   - Forward Hostname: `projectname` (container name)
   - Forward Port: `80` (always internal port)
   - Toggle **Block Common Exploits** on
3. **SSL tab**:
   - Select **Request a new SSL certificate**
   - Toggle **Force SSL** on
   - Toggle **HTTP/2 Support** on
   - Enter your email
   - Agree to Let's Encrypt terms
4. Click **Save**

---

## Step 5 — Verify
- Visit `https://subdomain.benmacintyre.net` in your browser
- Check container logs in Portainer if anything is wrong: **Containers → projectname → Logs**

---

## Notes
- Always use the **internal container port** in NPM (port `80` for Apache/Nginx)
- Always assign **npm-network** during container creation in Portainer — skips the need for any terminal network commands
- If you forget to assign npm-network during creation, run in terminal:
  ```bash
  docker network connect npm-network projectname
  ```
- Local access is always faster — use `http://192.168.1.10:hostport` when on home network
- If SSL cert fails, check that the Cloudflare A record is pointing to the correct public IP:
  ```bash
  curl ifconfig.me
  ```
