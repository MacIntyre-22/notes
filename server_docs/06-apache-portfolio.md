# Apache Portfolio Container

## Folder structure created
```bash
mkdir -p /home/bmacintyre/www/portfolio
```
Note: existing portfolio folder was moved into /home/bmacintyre/www/ directly.

## Container created via Portainer UI
- Name: `portfolio`
- Image: `httpd:latest`
- Host port: `8081` → Container port: `80`
- Bind mount: `/home/bmacintyre/www/portfolio` → `/usr/local/apache2/htdocs`
- Restart policy: `Always`
- Network: `npm-network`

## Checked Apache logs
```bash
docker logs portfolio
```

## Access
- Local: `http://192.168.1.10:8081`
- Public: `https://benmacintyre.net`
