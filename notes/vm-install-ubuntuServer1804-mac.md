#TOC
<!-- TOC -->

- [VirtualBox Installation](#virtualbox-installation)
- [UBUNTU 1804 Server Installation](#ubuntu-1804-server-installation)
    - [VM Configuration](#vm-configuration)
    - [Ubuntu Installation](#ubuntu-installation)
    - [Ubuntu Customization](#ubuntu-customization)
        - [System Upgrade](#system-upgrade)
        - [SSH Configuration](#ssh-configuration)
            - [Bridged Configuration](#bridged-configuration)
            - [Port Forwarding Configuration](#port-forwarding-configuration)
        - [Virtual Box Guest Additions](#virtual-box-guest-additions)
- [Ubuntu 18.04 Software Installation](#ubuntu-1804-software-installation)
    - [List Installed Packaged](#list-installed-packaged)
    - [MySQL](#mysql)
        - [Edit `/etc/mysql/mysql.conf.d/mysqld.cnf`](#edit-etcmysqlmysqlconfdmysqldcnf)
        - [Create A Remote User](#create-a-remote-user)
        - [Restart MySQL Service](#restart-mysql-service)

<!-- /TOC -->
  

# VirtualBox Installation

When Installing the dmg package there there is a problem at the very end of the installation which is preventing Virtual Box to complete the installation in macOS High Sierra.
> Virtual Box 5.2
> macOS High Sierra 10.13.6

[Failed Installation Issue Solved](https://stackoverflow.com/questions/46546192/virtualbox-not-installing-on-high-sierra)

> It's a Mac OS issue. Go to system preferences/Security & Privacy. There Allow Oracle to install software. Retry installing virtual box after that. It worked for me. Good Luck!

# UBUNTU 1804 Server Installation

## VM Configuration

* New VM
* Name the VM [UbuntuServer1804] / Linux / Ubuntu (64-bit)
* RAM Memory 2048
* Create a Virtual Hard Disk Now / VDI Select / Dynamically Allocated / 10 GB
* Start the VM
* Locate and Load the ISO File `UbuntuServer1804`

## Ubuntu Installation
* Language Selection
* Keyboard layout configuration / Keyboard Identification
* Start Installation (Install Ubuntu).
* Initial Network Config `Defaults`.
* Proxy Address `None`.
* Mirror Address `Default`.
* Partitioning `Default`.
* Disk Selection `Default`.
* File System Summary `No Action Required`.
* Login Configuration. *Make it Default as ubuntu / ubuntu / ubuntu*
* Server Snaps **Not Selected Any**
* Reboot

## Ubuntu Customization
### System Upgrade
```bash
# Package Libraries Update
sudo apt-get update
# System Upgrade
sudo apt-get upgrade
# Turn the system down
sudo poweroff
```

### SSH Configuration
#### Bridged Configuration
* Configure VM Network to Bridged
* Restart
  
In Ubutnu Console type `ifconfig` , Verify the new IP Address is in your Network Segment.

In macOS Terminal ssh to the Virtual Machine
```
ssh -p 22 ubuntu@192.168.1.79
```
#### Port Forwarding Configuration

### Virtual Box Guest Additions
> Menu -> Devices -> Insert Guess Additions CD Image

```bash
# Install Linux Headers required to compile
sudo apt install linux-headers-$(uname -r) build-essential dkms
# Reboot the System
sudo reboot
# Mount the virtual cd rom
sudo mkdir /media/cdrom/
sudo mount -t auto /dev/cdrom /media/cdrom/
# cd into the cdrom and install Guest Additions
cd /media/cdrom/
sudo sh ./VBoxLinuxAdditions.run
```
> Guest Additions are required if you want to share a Disk between the Host machine and the Guest machine.

# Ubuntu 18.04 Software Installation
## List Installed Packaged
```console
sudo apt list --installed
```

## MySQL
[Reference](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-18-04)
```bash
sudo apt-get update
sudo apt-get install mysql-server
sudo mysql_secure_installation
# Enable / Disable VALIDATE PASSWORD PLUGIN
# SET root Password
# Default all other options
```

### Edit `/etc/mysql/mysql.conf.d/mysqld.cnf`

```console
sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf
```

```bash
# Change line 43
# From
bind-address            = 127.0.0.1
# To
bind-address            = 0.0.0.0
```

### Create A Remote User
```console
sudo mysql -u root -p
```

```sql
CREATE USER 'myroot'@'%' IDENTIFIED BY 'myroot';

GRANT ALL PRIVILEGES ON *.* TO 'myroot'@'%' WITH GRANT OPTION;
```

[Reference for Problem Access Denied](https://stackoverflow.com/questions/39281594/error-1698-28000-access-denied-for-user-rootlocalhost)
[Reference to Create a Remote User](https://stackoverflow.com/questions/16287559/mysql-adding-user-for-remote-access)

### Restart MySQL Service

```bash
# Check MySql status
sudo service mysql status
# restart MySql Service
sudo service mysql restart
```

