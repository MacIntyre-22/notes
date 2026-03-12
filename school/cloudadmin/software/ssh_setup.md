# SSH Setup Between Two Linux Machines

A step-by-step guide to configuring SSH between a client and server, setting up key-based authentication, and optionally disabling password authentication.

---

## Prerequisites

- Two Linux machines (referred to as **client** and **server**)
- A user account with `sudo` privileges on both machines
- Network connectivity between the two machines

---

## Step 1: Install OpenSSH

On **both machines**, ensure OpenSSH is installed.

**Debian/Ubuntu:**
```bash
sudo apt update && sudo apt install openssh-server openssh-client -y
```

**RHEL/Fedora/CentOS:**
```bash
sudo dnf install openssh-server openssh-clients -y
```

**Arch Linux:**
```bash
sudo pacman -S openssh
```

---

## Step 2: Start and Enable the SSH Service

On the **server**, start and enable the SSH daemon so it runs on boot.

```bash
sudo systemctl start ssh        # or 'sshd' on RHEL-based systems
sudo systemctl enable ssh
sudo systemctl status ssh       # confirm it's running
```

---

## Step 3: Find the Server's IP Address

On the **server**, get its IP address:

```bash
ip addr show
# or
hostname -I
```

Note the IP address — you'll need it from the client to connect.

---

## Step 4: Test Password-Based Connection (Initial Check)

From the **client**, verify basic SSH connectivity before setting up keys:

```bash
ssh username@server-ip
```

> Replace `username` with the actual user on the server, and `server-ip` with the server's IP address.

Accept the host fingerprint when prompted, then exit:

```bash
exit
```

---

## Step 5: Generate an SSH Key Pair on the Client

On the **client**, generate a new key pair. Ed25519 is recommended for modern systems.

```bash
ssh-keygen -t ed25519 -C "your_email_or_label"
```

When prompted:
- **File location** — press `Enter` to accept the default (`~/.ssh/id_ed25519`)
- **Passphrase** — recommended; adds an extra layer of security to your private key

This creates two files:
| File | Description |
|---|---|
| `~/.ssh/id_ed25519` | Your **private key** — never share this |
| `~/.ssh/id_ed25519.pub` | Your **public key** — this goes on the server |

---

## Step 6: Copy the Public Key to the Server

Use `ssh-copy-id` to transfer your public key to the server:

```bash
ssh-copy-id username@server-ip
```

This appends your public key to `~/.ssh/authorized_keys` on the server automatically.

**If `ssh-copy-id` is unavailable**, do it manually:

```bash
cat ~/.ssh/id_ed25519.pub | ssh username@server-ip "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"
```

---

## Step 7: Verify Key-Based Authentication

From the **client**, connect to the server — you should no longer be prompted for a password (only your key passphrase, if you set one):

```bash
ssh username@server-ip
```

If it works, key-based authentication is set up successfully.

---

## Step 8 (Optional): Disable Password Authentication

> ⚠️ **Only do this after confirming key-based auth works.** Disabling password auth without a working key will lock you out of the server.

On the **server**, open the SSH configuration file:

```bash
sudo nano /etc/ssh/sshd_config
```

Find and update (or add) the following lines:

```
PasswordAuthentication no
PubkeyAuthentication yes
AuthorizedKeysFile .ssh/authorized_keys
```

Make sure `PasswordAuthentication` is set to `no` and is not commented out. Then save and close the file.

Restart the SSH daemon to apply changes:

```bash
sudo systemctl restart ssh
```

**Test from a new terminal** (keep your existing session open as a safety net) to confirm you can still connect:

```bash
ssh username@server-ip
```

If the connection succeeds, password authentication is now disabled and only key holders can log in.

---

## Quick Reference

| Task | Command |
|---|---|
| Generate key pair | `ssh-keygen -t ed25519` |
| Copy key to server | `ssh-copy-id username@server-ip` |
| Connect to server | `ssh username@server-ip` |
| Restart SSH service | `sudo systemctl restart ssh` |
| Check SSH status | `sudo systemctl status ssh` |

---

## Troubleshooting

**Permission denied (publickey):**
- Check that `~/.ssh/authorized_keys` on the server has permissions `600`
- Check that `~/.ssh/` on the server has permissions `700`
- Confirm `PubkeyAuthentication yes` is set in `/etc/ssh/sshd_config`

```bash
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
```

**Connection refused:**
- Confirm the SSH service is running on the server: `sudo systemctl status ssh`
- Check firewall rules allow port 22: `sudo ufw allow ssh` (Ubuntu) or `sudo firewall-cmd --add-service=ssh --permanent` (RHEL)

**Still asked for a password after copying key:**
- Run `ssh -v username@server-ip` for verbose output to debug the handshake
