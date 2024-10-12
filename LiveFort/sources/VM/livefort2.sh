#!/bin/bash

echo -e "\033[34;42m Starting VM \033[0m"

VBoxManage startvm LiveFort

echo -e "\033[34;42m Enabling USB Detection Script \033[0m"

cd ..
sudo chmod +x usb.sh
./usb.sh & disown
exit
