# Installing Ubuntu Server 1804 in Raspberry Pi 3

<!-- TOC -->

- [Installing Ubuntu Server 1804 in Raspberry Pi 3](#installing-ubuntu-server-1804-in-raspberry-pi-3)
- [Download Requiered Software](#download-requiered-software)
- [Remote Desktop](#remote-desktop)
- [Python](#python)
- [GPIO](#gpio)
- [References](#references)

<!-- /TOC -->

# Download Requiered Software
* [Ubuntu Server 1804 for ARM](https://www.ubuntu.com/download/server/arm)
* [Raspbian](https://www.raspberrypi.org/downloads/raspbian/)
* ["Etcher" iso to flash](https://www.balena.io/etcher/)

# Remote Desktop
```console
# Clean UP
sudo apt-get remove xrdp vnc4server tightvncserver
# Install
sudo apt-get install tightvncserver
sudo apt-get install xrdp
```
Open Remote desktop in Windows
Form MAc Users Download Microsoft Remote Desktop 10


# Python
[Raspbian Strech Lite](https://www.techcoil.com/blog/how-to-setup-raspbian-stretch-lite-on-raspberry-pi-3-to-run-python-3-applications/)

# GPIO
[Pypi](https://pypi.org/project/RPi.GPIO/)
[Raspbian Installation](https://raspberrypi.stackexchange.com/questions/30198/rpi-gpio-under-python-3)
[Ubuntu Answers 1](https://askubuntu.com/questions/621134/gpio-on-raspberry-pi)

```console
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install python-pip python-dev
sudo pip install RPi.GPIO  
```

# References
[Ubuntu Raspberry Pi](https://wiki.ubuntu.com/ARM/RaspberryPi#Booting_the_official_Pi_2_image_on_the_Pi_3B.2F3B.2B-)