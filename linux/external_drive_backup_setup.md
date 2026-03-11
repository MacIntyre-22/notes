# External Drive Setup on Linux

This guide covers checking for a new drive, cleaning/resetting it, and preparing it for any filesystem.

---

## 1. Checking for a New Drive

Plug in your external drive, then check what device Linux has detected:

```bash
lsblk
```

Example output:

```
sdc   8:32  0 931.5G  0 disk
```

* `sdc` is the drive name.
* If the drive has partitions, they appear under it (`sdc1`, `sdc2`, etc.).

You can also see filesystem signatures:

```bash
sudo wipefs /dev/sdc
```

---

## 2. Reset / Clean the Drive

To remove old partitions, filesystem signatures, and leftover metadata:

```bash
# Remove filesystem signatures
sudo wipefs -a /dev/sdc

# Zero out the start and end of the drive to remove all partition tables
sudo dd if=/dev/zero of=/dev/sdc bs=1M count=1024
sudo dd if=/dev/zero of=/dev/sdc bs=1M seek=$(( $(blockdev --getsz /dev/sdc) / 2048 - 1024 )) count=1024
```

* This wipes old GPT/MBR/Sun disklabels and ensures a clean slate.

Check again:

```bash
lsblk
```

It should show the drive with **no partitions**.

---

## 3. Creating and Formatting a Partition

### Create a New Partition

```bash
sudo fdisk /dev/sdc
```

Inside `fdisk`:

1. `g` → create a new GPT table
2. `n` → new partition (accept defaults to use full drive)
3. `t` → change type (e.g., `7` for generic data/exFAT/NTFS)
4. `w` → write changes and exit

### Format the Partition

First, make sure the necessary tools are installed for your chosen filesystem. For exFAT:

```bash
sudo apt install exfatprogs   # Debian/Ubuntu
```

Then format (adjust command for your chosen filesystem):

```bash
sudo mkfs.<filesystem> -n LabelName /dev/sdc1
```

* Replace `<filesystem>` with `exfat`, `ext4`, etc.
* Replace `LabelName` with a name for the drive.

### Mount the Drive

```bash
sudo mkdir -p /mnt/backup
sudo mount /dev/sdc1 /mnt/backup
```

* Access files at `/mnt/backup`.
* When done, unmount safely:

```bash
sudo umount /mnt/backup
```

---

Now your drive is clean and ready for use with any filesystem or backup plan.
