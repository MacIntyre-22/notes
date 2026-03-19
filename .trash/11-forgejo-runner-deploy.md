# Forgejo Runner & Deploy Workflow

## Downloaded and installed runner binary
```bash
wget https://code.forgejo.org/forgejo/runner/releases/download/v12.7.1/forgejo-runner-12.7.1-linux-amd64 -O /tmp/forgejo-runner
sudo cp /tmp/forgejo-runner /usr/local/bin/forgejo-runner
sudo chmod +x /usr/local/bin/forgejo-runner
```

## Generated runner config
```bash
/usr/local/bin/forgejo-runner generate-config > /home/bmacintyre/runner-config.yml
```

## Edited config to run jobs natively on host
In `/home/bmacintyre/runner-config.yml` changed:
```yaml
labels: []
```
To:
```yaml
labels:
  - "self-hosted:host"
```

## Registered runner
Get token from Forgejo: **Site Administration → Runners → Create new runner**
```bash
/usr/local/bin/forgejo-runner register \
  --no-interactive \
  --instance https://git.benmacintyre.net \
  --token YOURTOKEN \
  --name server-runner \
  --labels self-hosted
```

## Created systemd service
```bash
sudo nano /etc/systemd/system/forgejo-runner.service
```

Contents:
```ini
[Unit]
Description=Forgejo Runner
After=network.target

[Service]
User=bmacintyre
WorkingDirectory=/home/bmacintyre
ExecStart=/usr/local/bin/forgejo-runner daemon --config /home/bmacintyre/runner-config.yml
Restart=always

[Install]
WantedBy=multi-user.target
```

## Enabled and started service
```bash
sudo systemctl enable forgejo-runner
sudo systemctl start forgejo-runner
sudo systemctl daemon-reload
sudo systemctl restart forgejo-runner
```

## UFW - opened SSH port for Forgejo
```bash
sudo ufw allow 2222/tcp
```

## Deploy workflow
File location in portfolio repo: `.forgejo/workflows/deploy.yml`

```yaml
name: Deploy Portfolio

on:
  push:
    branches:
      - main

jobs:
  deploy:
    runs-on: self-hosted
    steps:
      - name: Deploy to Apache
        run: |
          cd /home/bmacintyre/www/portfolio && git pull origin main
```

## How it works
```
git push from desktop
        ↓
Forgejo receives push
        ↓
Action fires on self-hosted runner (runs directly on host)
        ↓
git pull updates /home/bmacintyre/www/portfolio
        ↓
Apache serves updated files instantly via bind mount
```

## Adding deploy workflow to a new project
1. Create `.forgejo/workflows/deploy.yml` in the repo
2. Set `runs-on: self-hosted`
3. Change the `cd` path to the correct www folder for that project
4. Push — Action fires automatically on every push to main
