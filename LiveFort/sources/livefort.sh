#!/bin/bash

cd /home/user/LiveFort/sources/

echo -e "\033[34;42m You Can Remove USB device \033[0m"
sleep 10


echo -e "\033[34;42m Checking File Integrity \033[0m"

cd Packages/
if ! sha256sum -c sha256; then
      echo -e " \033[31;49mFile Integrity Check Failed 
Cause: File may be tampered or corrupted during downloading.\033[0m" >&2
      echo -e "\033[31;49mFix: Redownload LiveFort Package from github repository.
Note: You don't need to redownload Boot Package . Downloading LiveFort package github repository is sufficient.\033[0m" >&2
       exit 1
fi

echo -e "\033[34;42m Installing necessary Packages \033[0m"

sudo dpkg -i *.deb
echo "y" | VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-7.0.12.vbox-extpack

echo -e "\033[34;42m Disabling USB Devices \033[0m"

sudo systemctl stop udisks2.service
sudo systemctl mask udisks2

echo -e "\033[34;42m Importing VM \033[0m"

cd /home/user/LiveFort/sources/VM
VBoxManage import LiveFort.ova

echo -e "\033[34;42m Setting Up USB Passthrough \033[0m"

sudo chmod +x livefort2.sh
sudo gpasswd -a user vboxusers
groups user
id -g
newgrp vboxusers
newgrp user


