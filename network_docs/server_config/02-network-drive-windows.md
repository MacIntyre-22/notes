# Network Drive Setup (Windows 11)

## Software Installed
- WinFsp — https://winfsp.dev/rel
- SSHFS-Win 3.7.21011 x64 — https://github.com/winfsp/sshfs-win/releases
- SSHFS-Win Manager — https://github.com/evsar3/sshfs-win-manager/releases

## Checked if SSHFS binary existed
```powershell
Get-ChildItem "C:\Program Files\SSHFS-Win\bin"
```

## Checked WinFsp service status
```powershell
Get-Service WinFsp.Launcher
```

## Checked WinFsp version
```powershell
Get-Item "C:\Program Files (x86)\WinFsp\bin\winfsp-x64.dll" | Select-Object -ExpandProperty VersionInfo
```

## Attempted mount via PowerShell (before switching to SSHFS-Win Manager)
```powershell
& "C:\Program Files\SSHFS-Win\bin\sshfs.exe" bmacintyre@192.168.1.10 Z: -o idmap=user
```

## Final working mount configuration (via SSHFS-Win Manager GUI)
- Host: `192.168.1.10`
- Port: `22`
- Username: `bmacintyre`
- Path: `/home/bmacintyre/server_storage`
- Drive letter: `S:`
