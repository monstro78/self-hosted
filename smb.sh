#!/bin/bash

echo [Downloads] >> /etc/samba/smb.conf
comment = Download Folder on Pi >> /etc/samba/smb.conf
path = /portainer/Downloads >> /etc/samba/smb.conf
writable=Yes >> /etc/samba/smb.conf
create mask=0770 >> /etc/samba/smb.conf
directory mask-0770 >> /etc/samba/smb.conf
public=no >> /etc/samba/smb.conf
