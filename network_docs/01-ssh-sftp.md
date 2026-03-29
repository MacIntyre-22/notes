# SFTP Setup

[[ssh_setup]]

## Verified SSH is running on server
```bash
sudo systemctl status ssh
```

## Found server IP
```bash
ip a
```

## Tested SFTP locally on server
```bash
sftp localhost
```

## Tested SSH from Windows desktop (PowerShell)
```powershell
ssh bmacintyre@192.168.1.10
```

## Tested SFTP from Windows desktop (PowerShell)
```powershell
sftp bmacintyre@192.168.1.10
```

## Checked SFTP subsystem config on server
```bash
sudo nano /etc/ssh/sshd_config
```

## Verified running SSH config
```bash
sshd -T | grep -i sftp
```

## Watched live SSH logs
```bash
sudo journalctl -fu ssh
```
