# Nginx Proxy Manager Setup

## Stopped and disabled Caddy (was occupying port 80/443)
```bash
sudo systemctl stop caddy
sudo systemctl disable caddy
```

## Removed old Caddy site configs
```bash
sudo rm /etc/caddy/sites/portfolio.caddy
sudo rm /etc/caddy/sites/cloud.caddy
sudo rm -rf /var/lib/caddy/.local/share/caddy
```

## Ran NPM container
```bash
docker run -d \
  -p 80:80 \
  -p 443:443 \
  -p 81:81 \
  --name nginx-proxy-manager \
  --restart always \
  -v /home/bmacintyre/npm/data:/data \
  -v /home/bmacintyre/npm/letsencrypt:/etc/letsencrypt \
  jc21/nginx-proxy-manager:latest
```

## Checked NPM logs
```bash
docker logs nginx-proxy-manager
```

## Access
- Admin UI: `http://192.168.1.10:81`
- Default email: `admin@example.com`
- Default password: `changeme`
- Changed email and password on first login

## Proxy Hosts configured
| Domain | Container | Internal Port |
|---|---|---|
| benmacintyre.net | portfolio | 80 |
| files.benmacintyre.net | filebrowser | 80 |

## Notes
- Always use internal container port in NPM (right side of port mapping)
- SSL certificates issued via Let's Encrypt for each proxy host
- Force SSL enabled on all proxy hosts
