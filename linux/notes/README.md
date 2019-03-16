# Linux Notes and Tips
<!-- TOC -->

- [Linux Notes and Tips](#linux-notes-and-tips)
  - [Change Password](#change-password)
  - [Create User and add/remove from sudoers group](#create-user-and-addremove-from-sudoers-group)
  - [Check linux version](#check-linux-version)
  - [Check for IP address or network interfaces information](#check-for-ip-address-or-network-interfaces-information)
  - [Check Disk Space](#check-disk-space)
  - [Services](#services)
  - [Check Size of Directory](#check-size-of-directory)
  - [Check Listening ports](#check-listening-ports)
  - [CPU Usage of Processes](#cpu-usage-of-processes)
  - [Mounted volumes](#mounted-volumes)
  - [Checking how commands works](#checking-how-commands-works)
- [References](#references)

<!-- /TOC -->
## Change Password
```bash
passwd [username]
```
## Create User and add/remove from sudoers group
```bash
```
## Check linux version
```bash
# All information
uname
# 
uname -a
# Kernel version
uname -r 
```
## Check for IP address or network interfaces information

```bash
ifconfig
ifconfig -a
```
## Check Disk Space

```bash
# Disk free 
df -ah
# ?
df -H
# Who is Using the most of the space Ubuntu
sudo du -cha --max-depth=1 / | grep -E "M|G"
```
[Reference](https://askubuntu.com/questions/911865/no-more-disk-space-how-can-i-find-what-is-taking-up-the-space)

## Services 
```bash
# actions status|start|stop|restart
service [servicename] [action]

systemctl [action] [servicename]
```
## Check Size of Directory
```bash
# Disk Use
du -sh [directory]
```
## Check Listening ports
```bash
sudo netstat -tulpn
sudo netstat -plnt
sudo netstat -plnt | grep ':80'
```
## CPU Usage of Processes
```bash
ps -aux | grep [service]

top

htop
```
## Mounted volumes
```bash
# Check Mounted Volumes
mount
# Mount a New Volume
mount [options] [volume] [mounting point]
mount /dev/sda2 /mnt/mydisk
# Check Mounted Partitions
cat /etc/fstab
```
## Checking how commands works
```bash
man command
```

```console
```

```bash
```

# References
[Interview Questions Video](https://youtu.be/l0QGLMwR-lY)