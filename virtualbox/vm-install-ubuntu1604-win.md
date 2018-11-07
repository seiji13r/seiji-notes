**INSTALL UBUNTU SERVER 16.04 INTO VIRTUAL BOX**

Language: English\
Country: [Choose the Country] \
Keyboard: [Autodetect] "latam" \
Hostname: ubuntu\
Name: [Type User Name] \
Username: [Type user Name] "ubuntu" \
Encrypt: No\
TimeZone: [Verify the TimeZone] \
Partition Disk: Select Guided Use Entire Disk and Set-Up LVM\
Proxy: No [Blank] \
Updates: Install Security Updates Automatically\
Packages: \
	Standard System Utilities\
	OpenSSH Server\
Install GRUB: Yes


########################################################################### \
If Required Clone the Fresh Installation to have it available the next time \
Check Disk Usage \
Update Rerpository Pointers \
Upgrade Packages \
Auto Remove Old Kernel Files in \Boot Partition
Check Disk Usage

**COMMANDS** \
df -H \
sudo apt-get udpate \
sudo apt-get upgrade \
df - H \
sudo apt-get autoremove \
df -H

########################################################################### \
Configure SSH Port Forwarding to log with terminal window and \
Guest Aditions

**CONFIGURE PORT FORWARDING** \
Install Guest Additions \
In VirtualBox (Virtual Machine) Settings go to: \
Network \
Port Forwarding \
Configure Name(SSH) Host(Blank) Port(22) Host(Blank) Port(22)

**INSTALL GUEST ADDITIONS** \
Insert Guest Aditions. In VM Menu -> Devices -> Insert Guest Additions \
In the terminal Install Linux Headers and Build Essentials. \
Mount the CD-ROM \
Install the Guest Additions

**COMMANDS** \
sudo apt-get install -y dkms build-essential linux-headers-generic linux-headers-$(uname -r) \
sudo reboot \
sudo mount -t auto /dev/cdrom /media/cdrom/ \
cd /media/cdrom/
sudo sh ./VBoxLinuxAdditions.run

########################################################################### \
**Create a SUDOER USER** \
Create a new user \
Add the user to the sudoer group \
Modify User data if required \
List the Users registered in the system

**COMMANDS** \
sudo adduser [USERNAME] \
sudo usermod -aG sudo [USERNAME] \
chfn [options] [USERNAME] \
chfn [USERNAME] \
cat /etc/passwd

**List Sudoer Users**\
grep -Po '^sudo.+:\K.*$' /etc/group

########################################################################### \
**Share a directory for the projects with the HOST Machine** \
Create a directory in the HOst Machine \
Go to Settings in the Virtual Machine Menu \
Select the Created Directory to be shared \
Select: Automount and Unselect: Read only \
Reboot the Virtual Machine (Guest Marchine)

Verify the shared directory is being automounted and displayed \
In a Terminal Window (Guest Machine) create the shared direcotry \
In the Guest Machine edit the user .profile to mount the \
Shared Directory in the specified location

**COMMANDS** \
df -H \
mkdir shared \
sudo mount -t vboxsf [HOST_DIRECTORY] /home/[USERNAME]/[SHARED] \
sudo mount -t vboxsf VMTraining /home/training/shared

vim .profile \
sudo mount -t vboxsf [HOST_DIRECTORY] /home/[USERNAME]/[SHARED] \
:wq

source .profile \
cd shared




