#!/bin/bash

sudo cp -r LiveFort /home/user/
sudo chown -R user /home/user/LiveFort/
sudo mkdir /home/user/LiveFort/iso
sudo rsync -ah --progress /media/user/Ventoy/debian-live-12.7.0-amd64-gnome.iso /home/user/LiveFort/iso
sudo chown -R user /home/user/LiveFort/iso/
cd /home/user/LiveFort/sources/
sudo chmod +x livefort.sh
/bin/bash livefort.sh
exit 1
