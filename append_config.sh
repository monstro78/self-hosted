#!/bin/bash

# Configurations for config.txt
# boot from USB
# and gpu memory to 8MB

sudo tee -a /boot/config.txt > /dev/null <<EOT
program_usb_boot_mode=1
program_usb_boot_timeout=1
dtparam=sd_poll_once
gpu_mem=8
EOT

echo Better reboot after that!!
