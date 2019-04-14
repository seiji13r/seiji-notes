# Installing Ubuntu Server 16.04 for django Applications  <!-- omit in toc -->

- [Checklist](#checklist)
- [Date & Timing logs](#date--timing-logs)
- [Virtual Machine Basic Settings](#virtual-machine-basic-settings)
- [Bootup Installation](#bootup-installation)
- [Update and Upgrade the Packages](#update-and-upgrade-the-packages)
- [Configure Port Forwarding to SSH into the Virtual Machine](#configure-port-forwarding-to-ssh-into-the-virtual-machine)
- [Virtual Box Guest Additions](#virtual-box-guest-additions)
- [Install Required Packages](#install-required-packages)
- [MySQL](#mysql)
  - [Edit `/etc/mysql/mysql.conf.d/mysqld.cnf`](#edit-etcmysqlmysqlconfdmysqldcnf)
  - [Create A Remote User](#create-a-remote-user)
  - [Restart MySQL Service](#restart-mysql-service)
- [PostgreSQL](#postgresql)
  - [Configuration](#configuration)
  - [Create Super User as postgres USER](#create-super-user-as-postgres-user)
  - [Create USER and ASSOCIATED DATABASE](#create-user-and-associated-database)
      - [RESTORE backup or tar](#restore-backup-or-tar)
- [Create the Applications Linux User](#create-the-applications-linux-user)
- [Create Shared Folder](#create-shared-folder)
- [References](#references)

# Checklist

1. [ ] Create Virtual Machine [3 min]
2. [ ] Bootup the VM with Installation ISO [5 min]
3. [ ] Select Language, Country and Keyboard Layout [5 min]
4. [ ] Select Hostname, User and Password ... Home Directory encryption and Clock Time-Zone [15 min]
5. [ ] Install Packages and GRUB [15 min]
6. [ ] Update and Upgrade All Packages [5 to 30 min]
7. [ ] Configure Port Forwarding to SSH into the Virtual Machine [5 minutes]
8. [ ] Install VM Guest Additions [10 min]
9.  [ ] Install Extra Packages [30 min]
10. [ ] Configure MySQL and PostgreSQL for remote Connections [20 min]
11. [ ] Create the Applications Linux User
12. [ ] Configure the Shared Directory
13. [ ] Create File Structure


# Date & Timing logs
2019-04-12  15:00 16:47

# Virtual Machine Basic Settings
1024 MB RAM
15 GB VDI Dynamically Allocated

# Bootup Installation

* Select Language and Country `English and Mexico`
* Select the Keyboard Layout.
* Select Hostname, User and Password.
* Do not Encrypt home Directory.
* Configure Clock Time-Zone
* Partitioning Guided - Use Entire Disk and set up LVM.
* Configure No Proxy
* Install security updates automatically
* Select OpenSSH Server and standard system utilities.
* Install the Grub boot loader to the master boot record (YES)

# Update and Upgrade the Packages

```console
sudo apt-get update
sudo apt-get upgrade
```

# Configure Port Forwarding to SSH into the Virtual Machine

> Menu -> Settings -> Network -> NAT

> Menu -> Settings -> Network -> Port Forwarding...
> HOST : 1022
> GUEST : 2022

To login lets use the new port in MAC terminal

`ssh -p 2022 ubuntu@localhost`

Additional For Server Services
Enable as follows:
* MySQL in Port 3306
* PostgreSQl in Port 5432
* Nginx in Port 80
* TestWeb in Port 8080

# Virtual Box Guest Additions
> Menu -> Devices -> Insert Guess Additions CD Image

```bash
# Install Linux Headers required to compile
sudo apt-get install linux-headers-`uname -r`
sudo apt-get install build-essential

# Reboot the System
sudo reboot
# Mount the virtual cd rom
sudo mount -t auto /dev/cdrom /media/cdrom/
# cd into the cdrom and install Guest Additions
cd /media/cdrom/
sudo sh ./VBoxLinuxAdditions.run
```
> Guest Additions are required if you want to share a Disk between the Host machine and the Guest machine.
> Make sure to upgrade into the Guest OS in case VirtualBox has been upgraded lately.

> There is currently a problem to install Guest Additions (5.2.26) in Ubuntu 16.04 kernel 4.4.0-145-generic

# Install Required Packages

``` bash
sudo apt-get install python3-pip
export LC_ALL=C
sudo pip3 install pip --upgrade
# Install Virtual Env and Virtual Env Wrapper
sudo pip3 install virtualenv
sudo pip3 install virtualenvwrapper
# If using Python3 edit the line 50 in the virtualenvwrapper.sh script
which python to which python3
sudo vim /usr/local/bin/virtualenvwrapper.sh
:set number
sudo vim .profile
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
Create Virtual Environments
mkvirtualenv django17
mkvirtualenv django18

# Install GIT
sudo apt-get install git
# Install LDAP GNU Libraries
sudo apt-get install libldap2-dev
sudo apt-get install libsasl2-dev

# Install NGINX
sudo apt-get install nginx

# Install MySQL 5.6
sudo apt-get install mysql-server-5.6
sudo apt-get install libmysqlclient-dev
recomended for dev environement root/ubuntu
# Install SAMBA
sudo apt-get install samba 

# Install PostgresSQL
sudo apt-get install postgresql postgresql-contrib postgresql-client
sudo apt-get install python-psycopg2

# Install Supervisor
sudo apt-get install supervisor

# Install rabbitmq
sudo apt-get install rabbitmq-server
```

# MySQL
## Edit `/etc/mysql/mysql.conf.d/mysqld.cnf`

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

## Create A Remote User
```console
sudo mysql -u root -p
```

```sql
CREATE USER 'user'@'%' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON *.* TO 'user'@'%' WITH GRANT OPTION;

-- ALTER USER 'root'@'%' IDENTIFIED BY 'MyNewPass';

```

[Reference for Problem Access Denied](https://stackoverflow.com/questions/39281594/error-1698-28000-access-denied-for-user-rootlocalhost)
[Reference to Create a Remote User](https://stackoverflow.com/questions/16287559/mysql-adding-user-for-remote-access)

## Restart MySQL Service

```bash
# Check MySql status
sudo service mysql status
# restart MySql Service
sudo service mysql restart
```

# PostgreSQL

[Reference](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-18-04)

## Configuration

```bash
# Edit pstgresql.conf file usually found in /etc.
sudo vim /etc/postgresql/9.5/main/postgresql.conf
# vim command -> : set number
# change line 59 
# listen_addresses = 'localhost' -> listen_addresses = '*'

sudo vim /etc/postgresql/9.5/main/pg_hba.conf
# Add At the end
# # Allow Remote Connections
# host    all             all             0.0.0.0/0               md5
# host    all             all             ::/0                    md5


sudo service postgresql restart
```

## Create Super User as postgres USER

[Reference1](https://tableplus.io/blog/2018/10/how-to-create-superuser-in-postgresql.html)
[Reference2](https://support.chartio.com/knowledgebase/creating-a-user-with-p)

```console
sudo -u postgres psql
```

```sql
CREATE ROLE remoteroot SUPERUSER LOGIN CREATEROLE CREATEDB REPLICATION BYPASSRLS;
ALTER ROLE user WITH PASSWORD '[password]';
```

## Create USER and ASSOCIATED DATABASE

```sql
CREATE ROLE [USER-NAME] LOGIN PASSWORD '[password]';
CREATE DATABASE [DB-NAME] WITH OWNER=[USER-NAME];

-- Example
CREATE ROLE test LOGIN PASSWORD '1234';
CREATE DATABASE mytest WITH OWNER=test;

```

#### RESTORE backup or tar

The following example is done with dvdrental.tar database example.

```bash
# Create the database in psql
sudo -u postgres psql
# or
psql -h localhost -U [USER] [DATABASE]

CREATE DATABASE [DATABASE];
\q

# Database
pg_restore -h localhost -U [USER] -d [DATABASE] -v [FILE_PATH]
# Example
pg_restore -h localhost -U pgremote -d dvdrental -v "/home/ubuntu/dvdrental.tar"

```
# Create the Applications Linux User

```

```

# Create Shared Folder

* Create a directory in the Host Machine
* Go to Settings in the Virtual Machine Menu and Shared Folders
* Select the Created Directory to be shared
* Select: Automount and Unselect: Read only
* Reboot the Virtual Machine (Guest Marchine)

* Verify the shared directory is being automounted and displayed
* In a Terminal Window (Guest Machine) create the shared direcotry
* In the Guest Machine edit the user .profile to mount the Shared Directory in the specified location


```bash
# Old Method

df -H
mkdir shared
sudo mount -t vboxsf [HOST_DIRECTORY] /home/[USERNAME]/[SHARED]
sudo mount -t vboxsf VMTraining /home/training/shared

vim .profile \
sudo mount -t vboxsf [HOST_DIRECTORY] /home/[USERNAME]/[SHARED]
:wq

source .profile \
cd shared
```

```bash
# New Method
# List the Directories
df -H
# Try to Cd into the Virtua Box Shared Directory
cd /media/vm-shared
# sudo usermod -a -G vboxsf <user>
sudo usermod -a -G vboxsf ubuntu
# Reboot the VM and try Again
# Try to Cd into the Virtua Box Shared Directory
cd /media/sf_vm-shared/
# Create a soft Link
# ln -s [Source] [Link]
ln -s /media/sf_vm-shared/ myshared
```

# References

(Download Ubuntu 16.04)[http://releases.ubuntu.com/16.04/]
(Mount Shared Folder)[https://gist.github.com/estorgio/1d679f962e8209f8a9232f7593683265]
