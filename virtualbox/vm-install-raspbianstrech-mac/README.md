# Install Raspbian Stretch Desktop in VirtualBox

# ISO Download

[Download Page](https://www.raspberrypi.org/downloads/raspberry-pi-desktop/)
[Raspbian Desktop for MAC and PC](https://downloads.raspberrypi.org/rpd_x86_latest)

# Create a New Virtual Machine in VirtualBox

## Process without images.
1. Select New VM
2. Configure it as Follows:
   * **Name:** raspbianStretchOrig.
   * **Type:** Linux.
   * **Version:** Debian (32-bit).
3. Select at least 1[GB] RAM.
4. Create a Virtual Hard Disk Now.
5. VDI (VirtualBox Disk Image)
6. Dynamically Allocated
7. Size of the Disk **In my Case 8 [GB]**
8. Settings -> Storage Devices -> Load **iso image**
9.  Settings -> Network -> Bridged Network
10. Start

## Process with images.
1. Select New VM
2. Configure it as Follows:
   * **Name:** raspbianStretchOrig.
   * **Type:** Linux.
   * **Version:** Debian (32-bit).
   ![Click New](assets/img/000_newvm.png)
3. Select at least 1[GB] RAM.
   ![Ram](assets/img/010_ram.png)
4. Create a Virtual Hard Disk Now.
   ![Disk](assets/img/020_disk.png)
5. VDI (VirtualBox Disk Image)
   ![Disk VDI](assets/img/021_disk.png)
6. Dynamically Allocated
   ![Dynamically Allocated](assets/img/022_disk.png)
7. Size of the Disk **In my Case 8 [GB]**
   ![Disk Size](assets/img/023_disk.png)
8. Settings -> Storage Devices -> Load **iso image**
   ![Settings Storage](assets/img/030_isosel.png)
   ![Load ISO image](assets/img/031_isosel.png)
9.  Settings -> Network -> Bridged Network
   ![Bridged Network](assets/img/032_vmnetwork.png)
11. Start
   ![Start](assets/img/040_start.png)

# Install Raspbian Stretch

## Process with images.
1. In the initial Boot, Select Install.
![Install](assets/img/050_Install.png)
2. Select the Keyboard Layout. (For Mac in Mexico Select Spanish Layout)
![Keyboard Layout Selection](assets/img/051_Keyboard.png)
3. Follow the defaults for partitioning.
   ![Partition1](assets/img/052_Partition.png)
   ![Partition2](assets/img/053_Partition.png)
   ![Partition3](assets/img/054_Partition.png)
   ![Partition4](assets/img/055_Partition.png)
   ![Partition5](assets/img/056_Partition.png)
4. Accept Grub Loader Installation
   ![GrubLoader](assets/img/060_grubloader.png)
   ![GrubLoader](assets/img/061_grubloader.png)
5. Finish Install
   ![Finish Install](assets/img/070_finishinstall.png)


# Configure It

## Graphical Desktop

### Process without images
Once the system is rebooted.
1. Configure Localization.
2. Select Preferences Raspberry Pi Configuration.
3. Configure the System Settings
4. Enable SSH
5. Configure Localization.
6. Configure Timezone
7. Open the Terminal and Check for the IP address.

### Process with images
Once the system is rebooted.
1. Configure Localization.
   ![Welcome](assets/img/080_welcome.png)
   ![Localization](assets/img/090_localization.png)
2. Select Preferences Raspberry Pi Configuration.
   ![Click on Configuration](assets/img/100_configuration.png)
3. Configure the System Settings
   ![System Settings](assets/img/101_configuration.png)
4. Enable SSH
   ![SSH](assets/img/102_configuration.png)
5. Configure Localization.
   ![Localization](assets/img/103_configuration.png)
6. Configure Timezone
   ![Localization](assets/img/104_configuration.png)
7. Open the Terminal and Check for the IP address.
   ![IP Address](assets/img/105_configuration.png)

## Command Line


# Download VNC Viewer
[VNC](https://www.realvnc.com/en/connect/download/viewer/)