# Forgejo Setup

## Container created via Portainer
- Name: `forgejo`
- Image: `codeberg.org/forgejo/forgejo:latest`
- Port mapping: host `3000` → container `3000`
- Bind mount: `/home/bmacintyre/forgejo` → `/data` (Bind type)
- Network: `npm-network`
- Restart policy: `Always`

## Cloudflare DNS record added
| Type | Name | Content |
|---|---|---|
| A | `git` | home public IP |

## Nginx Proxy Manager proxy host added
- Domain: `git.benmacintyre.net`
- Forward Hostname: `forgejo`
- Forward Port: `3000`
- SSL: Let's Encrypt, Force SSL on

## Access
- URL: `https://git.benmacintyre.net`
- Created admin account on first launch via setup wizard
- Base URL set to `https://git.benmacintyre.net`

## Portfolio repo created
- In Forgejo: New Repository → `portfolio` → Private → no initialize
- On server initialized git in portfolio folder:
```bash
cd /home/bmacintyre/www/portfolio
git init
git remote add origin ssh://git@192.168.2.43:2222/macintyre/portfolio.git
git pull origin main
```

## Fixed permissions on portfolio folder
```bash
sudo chown -R bmacintyre:bmacintyre /home/bmacintyre/www/portfolio
```

## Cloning on desktop
- In Forgejo browser UI → repo → **Clone in VS Code**
- VS Code handles clone automatically
- HTTPS remote set automatically

## Forgejo access token (for HTTPS push from desktop)
- Forgejo → Settings → Applications → Generate New Token
- Used as password when pushing via HTTPS
- Saved in Windows Credential Manager via:
```powershell
git config --global credential.helper wincred
```
