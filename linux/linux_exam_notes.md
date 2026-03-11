# Linux Exam Notes

## New Topics

### Bash Scripting
- Structure of a script
  ```bash
  #!/bin/bash
  ```
- Variables
  ```bash
  NAME="value"
  echo $NAME
  ```
- Commands: any shell command inside script.
- Comments
  ```bash
  # This is a comment
  ```
- Selection structures
  ```bash
  if [ condition ]; then
    command
  fi
  ```
- Repetition structures
  ```bash
  for i in 1 2 3; do
    echo $i
  done
  ```
- Standard input/output/error: stdin (0), stdout (1), stderr (2).
- Redirecting input/output
  ```bash
  command > file
  command < file
  command 2> errors.log
  ```
- Append vs overwrite files
  ```bash
  command >> file   # append
  command > file    # overwrite
  ```

### Cron Daemon
- Scheduled tasks.
  ```bash
  crontab -e
  crontab -l
  ```

### Rsync
- Sync files/directories.
  ```bash
  rsync -av source/ dest/
  ```

### DNS
- DNS Zones: forward, reverse.
- FQDN: full domain name.
- Types of servers: authoritative, recursive, caching.
- Types of queries: recursive, iterative.
- Types of records: A, AAAA, CNAME, MX, NS, PTR, TXT.

### Bind9
- DNS server implementation.
- Config files: `/etc/bind/named.conf.local`, `/etc/bind/db.*`.

### LAMP
- Linux, Apache, MySQL, PHP stack.
- Apache configuration: `/etc/apache2/sites-available/`.
- MySQL basics: create DB, user.
- PHP processing via modules.
- Virtual Hosts: configured in `.conf` files.
- Document root: `/var/www/html`.
- Permissions: www-data ownership for web files.

### Mail
- MTA: handles mail transfer (Postfix, Exim).
- MDA: delivers mail to storage.
- MUA: client applications.
- Common solutions: Postfix + Dovecot.
- Reputation: affected by DNS, SPF, DKIM.
- Mail storage: mbox, Maildir.
- Spam filtering: SpamAssassin.

### Docker
- Containers vs Images: images are blueprints; containers are running instances.
- Docker Hub: repository for images.
- Docker volumes: persistent storage.
  ```bash
  docker run -v myvol:/data image
  ```

### Fail2ban
- Monitors logs and bans offenders.
  ```bash
  systemctl enable --now fail2ban
  ```

### Securing SSH
- Disable root login, use keys.
  ```bash
  /etc/ssh/sshd_config
  ```

### Backups / Automating Backups
- Tools: rsync, tar, cron.
  ```bash
  tar -czf backup.tar.gz /dir
  ```

---

## Old Topics

### History of Computing
- Key people/events: Turing, UNIX, GNU.

### What is Linux
- Kernel + tools.

### BIOS / Bootloader / Kernel
- BIOS initializes hardware.
- Bootloader (GRUB) loads kernel.

### Services, Shell, Graphical Servers
- Services run in background.
- Shell interprets commands.

### Desktop Environments
- GNOME, KDE.

### Popular Distributions
- Ubuntu, Debian, Fedora, CentOS.

### Open Source / GPL / Copyleft
- GPL ensures freedom to modify & distribute.

### Virtualization Types
- Type 1: bare-metal.
- Type 2: hosted hypervisors.

### Linux OS Structure
- Kernel, system libraries, user space.

### Directories
- `/etc` config; `/home` users; `/var` logs.

### Key Files
- `/etc/passwd`, `/etc/shadow`, `/etc/fstab`.

### Package Managers
- `apt`, `dnf`, `yum`.

### Command Line Basics
- File ops: `cp`, `mv`, `rm`, `ls`.
- Networking: `ip a`, `ping`.

### User Accounts
- Create: `useradd name`.
- Delete: `userdel name`.
- Modify: `usermod`.
- Groups: `groupadd`, `groupdel`, `gpasswd`.

### File Permissions & Ownership
- `chmod`, `chown`, `chgrp`.

### IP, Subnet, Gateway, DNS
- `ip addr`, `/etc/resolv.conf`.

### Network Components
- Switches, routers, firewalls.

### Checksums & Compression
- `sha256sum`, `gzip`, `tar`.

### SSH vs FTP vs SFTP vs Telnet
- SSH secure; Telnet insecure.

### Daemons & Services
- Controlled by systemd.
  ```bash
  systemctl start/stop/status
  ```

### Controlling Services
  ```bash
  systemctl enable name
  systemctl disable name
  systemctl restart name
  ```

