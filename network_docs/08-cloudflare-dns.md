# Cloudflare DNS Setup

## Migration from Namecheap
1. Created Cloudflare account at cloudflare.com
2. Added domain benmacintyre.net — Cloudflare auto-imported existing DNS records
3. Selected Free plan
4. Copied the two Cloudflare nameservers provided
5. In Namecheap: Domain List → Manage → Nameservers → Custom DNS → entered Cloudflare nameservers
6. Waited for Cloudflare to confirm nameservers were active

## DNS Records configured
| Type | Name | Content |
|---|---|---|
| A | benmacintyre.net | home public IP |
| A | files.benmacintyre.net | home public IP |

## Verified DNS propagation from desktop (PowerShell)
```powershell
nslookup benmacintyre.net
```

## Checked public IP on server
```bash
curl ifconfig.me
```

## Notes
- Correcting the A record to the right public IP resolved Let's Encrypt challenge failures in NPM
- IP updates must be done manually in Cloudflare dashboard for now if home IP changes
