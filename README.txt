# self-hosted for Raspberry-Pi 3b+


sudo fdisk /dev/sda # φτιάχνουμε τα partitions
sudo resi2fs /dev/sda2
sudo dphys-swapfile swapoff # απενεργοποιούμε το swap του raspbian και δίνουμε το δικό μας
sudo mkswap /dev/sda3
sudo swapon /dev/sda3
sudo nano /etc/fstab  # προσθέτουμε το swap με UUID=... /dev/sda3 swap defaults 0 0
sudo mount -a   # an den vgalei problima -> reboot
sudo apt update && sudo apt full-upgrade -y # αν στα πακετα έχει kernel τότε reboot.

# Ελεγχουμε με df -h και free -h

sudo apt install git
git clone https://github.com/monstro78/self-hosted
git pull

Acknowledgement --> https://github.com/novaspirit/pi-hosted , https://github.com/SelfhostedPro/selfhosted_templates
