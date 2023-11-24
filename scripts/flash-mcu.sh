#!/bin/bash

sudo service klipper stop
cp -f ../printer_data/config/scripts/.config-mcu .config
make clean
make flash FLASH_DEVICE=/dev/serial/by-id/usb-Klipper_stm32f446xx_570027001551313133353932-if00
sudo service klipper start
