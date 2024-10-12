<h1 align="center">LiveFort</h1>

<p align="center">
<img src="https://img.shields.io/badge/RELEASE-v0.1.0-8A2BE2"><br>
<img src="https://img.shields.io/badge/LIVE%20LINUX%20IN%20RAM%20WITH%20VIRTUALBOX%20AND%20USB%20PASSTHROUGH-FF4500">
</p>

<h4 align="left">
LiveFort is open source collection of scripts put together in such a way that they automatically setup a live linux environment in ram , install virtualbox in it and configure automatic detection of usb and it's passthrough to guest OS in virtualbox. <br>
These scripts create a secure live environment which fortifies your system against any infection from malicious files that you run in guest OS as well as any malicious USB that you insert in your system. <br>
</h4>

# Features

* **Boot linux (debian) in ram.**

* **Disable hard disk drives present in system during live boot to complete isolate live environment from user data.**

* **Disable webcam and microphone during live boot.**

*  **Automatically install virtualbox and virtualbox extension.**

* **Disable usb devices in host OS.**

* **Automatically setup virtual machine.**

*  **Setup usb passthrough without need to logout or reboot.**

* **Start virtual machine.**

* **Run a script in background to automatically detect usb insertion and passthrough it to guest OS.**

# Installation and Usage Instructions

###### 1. Download Ventoy and Debian 

[Click To Download Ventoy For Windows](https://github.com/ventoy/Ventoy/releases/download/v1.0.99/ventoy-1.0.99-windows.zip)

[Click To Download Ventoy For Linux](https://github.com/ventoy/Ventoy/releases/download/v1.0.99/ventoy-1.0.99-linux.tar.gz)

###### 2. Install Ventoy in Your USB Drive

    For Windows:

           1. Extract Zip File 

           2. Run Ventoy2Disk.exe

    For Linux:

            1.Extract downloaded tar.

            2.Navigate to extracted folder , right click and select Open In Terminal.  

                or open terminal and navigate to extracted folder using cd 

                command.

    ./VentoyGUI.x86_64

                3.Click Install

                 **Caution:Your Pendrive Will Be Formatted.**

###### 3. Download LiveFort from Releases and download debian

        1.Extract Downloaded Zip File.

        2.Move Contents Of Extracted Folder (livefort-0.1...) inside Ventoy Partition of USB Drive.

        3. Download **debian-live-12.7.0-amd64-gnome.iso** and put it inside Ventoy Partition of USB Drive.

###### 4. Boot USB Drive

            Select "Boot in normal mode" in secondary boot menu.

 **#Remove and Reinsert USB Drive.**      

###### 5. Run start.sh

            1.Open Ventoy Partition , right click and select Open In Terminal.

            2.Grant execute permission to start.sh and run it.

    sudo chmod +x start.sh

    ./start.sh

###### 6. Run livefort2.sh

            Run livefort2.sh after start.sh completes execution.

    ./livefort2.sh

###### 7. Boot Debian Inside Virtual Machine

# Screenshots


