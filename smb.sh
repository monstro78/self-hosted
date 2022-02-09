#!/bin/bash

# Dimiourgia samba share sto pi kai dikaiomata
mkdir /portainer/Downloads
sudo chown pi:pi /portainer/Downloads
sudo chmod -R 0755 /portainer/Downloads
sudo apt install samba samba-common-bin
sudo apt install ntfs-3g

#Replace sto min protocol me SMB3
sed -i 's/SMB2/SMB3/g' /etc/samba/smb.conf

#Prosthiki section gia to share
sudo tee -a /etc/samba/smb.conf > /dev/null  <<EOT
[Downloads]
comment = Download Folder on Pi
path = /portainer/Downloads
writable=Yes
create mask=0770
directory mask-0770
public=no
EOT

#Prosthiki user kai restart service
sudo smbpasswd -a pi
sudo systemctl restart smbd
