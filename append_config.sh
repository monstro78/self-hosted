#!/bin/bash

# Configurations for config.txt
# boot from USB
# and gpu memory to 8MB

echo program_usb_boot_mode=1 >> /boot/config.txt
echo program_usb_boot_timeout=1 >> /boot/config.txt
echo dtparam=sd_poll_once >> /boot/config.txt
echo gpu_mem=8 >> /boot/config.txt
echo Better reboot after that!!
