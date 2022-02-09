#!/bin/bash


echo "Dhmiourgia directories..."
sudo mkdir -p /portainer/Files/AppData/Config/nginx-proxy-manager/data || error "Egine malakia!"
sudo mkdir -p /portainer/Files/AppData/Config/nginx-proxy-manager/letsencrypt || error "Egine malakia!"
sudo mkdir -p /portainer/Files/AppData/Config/nginx-proxy-manager/database || error "Egine malakia!"

echo "Dhmiourgia blank nginx-proxy-manager config file"
sudo touch /portainer/Files/AppData/Config/nginx-proxy-manager/config.json || error "Egine malakia!"

echo echo "Done! --> Deploy stack"
echo "Username=admin@example.com, password=changeme"
