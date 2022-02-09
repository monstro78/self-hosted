#!/bin/bash

echo "Dimiourgia samba share sto pi kai dikaiomata"
mkdir /portainer/Downloads
sudo chown pi:pi /portainer/Downloads
sudo chmod -R 0755 /portainer/Downloads
echo "Install ta paketa"
sudo apt install samba samba-common-bin ntfs-3g

echo "Replace sto min protocol me SMB3"
sed -i 's/SMB2/SMB3/g' /etc/samba/smb.conf

echo "Prosthiki section gia to share"
sudo tee -a /etc/samba/smb.conf > /dev/null  <<EOT
[Downloads]
comment = Download Folder on Pi
path = /portainer/Downloads
writable=Yes
create mask=0770
directory mask-0770
public=no
EOT

echo "Prosthiki user kai restart service"
sudo smbpasswd -a pi
sudo systemctl restart smbd

echo "Done!!"
