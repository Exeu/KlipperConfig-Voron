#!/bin/bash

sudo service klipper stop
cp -f ../printer_data/config/scripts/.config-host .config
make clean
make flash
sudo service klipper start
