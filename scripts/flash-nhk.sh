#!/bin/bash

sudo service klipper stop
cp -f ../printer_data/config/scripts/.config-nhk .config
make clean
make flash FLASH_DEVICE=/dev/serial/by-id/usb-Klipper_rp2040_E6635C469F344327-if00
sudo service klipper start
