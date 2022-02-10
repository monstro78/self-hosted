# self-hosted for Raspberry-Pi 3b+


sudo fdisk /dev/sda  ...ktl
sudo resi2fs /dev/sda2
sudo dphys-swapfile swapoff απενεργοποιούμε το swap του raspbian και δίνουμε το δικό μας
sudo mkswap /dev/sda3
sudo swapon /dev/sda3
sudo nano /etc/fstab προσθέτουμε το swap με UUID=... /dev/sda3 swap defaults 0 0
sudo apt update && sudo apt full-upgrade -y && sudo apt clean και αφού τελειώσει reboot.

Ελεγχουμε με df -h και free -h


Acknowledgement --> https://github.com/novaspirit/pi-hosted , https://github.com/SelfhostedPro/selfhosted_templates
