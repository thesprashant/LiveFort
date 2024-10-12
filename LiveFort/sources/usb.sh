#!/bin/bash 

while true
  do
        VBoxManage list usbhost > usblist
        linenum="$(grep -n "Manufacturer:        USB" usblist | head -n 1 | cut -d: -f1)"
        lineuuid=$((linenum-6))
        uuid="$(cat usblist | head -n $lineuuid | tail -1 | grep -o ".\{36\}$")"
        if ! [ -z "$uuid" ]; then 
            VBoxManage controlvm "LiveFort" usbattach $uuid
        fi
        sleep 5
  done
