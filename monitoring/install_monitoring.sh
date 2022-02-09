#!/bin/bash

echo "Dhmiourgia directories..."
sudo mkdir -p /portainer/Files/AppData/Config/prometheus/config || error "Egine malakia!"
sudo mkdir -p /portainer/Files/AppData/Config/prometheus/data || error "Egine malakia!"
sudo mkdir -p /portainer/Files/AppData/Config/grafana/data || error "Egine malakia!"

echo "Download config file..."
sudo wget -O /portainer/Files/AppData/Config/prometheus/config/prometheus.yml https://raw.githubusercontent.com/monstro78/self-hosted/main/monitoring/prometheus.yml
echo "Dhmiourgia blank config file"
sudo touch /portainer/Files/AppData/Config/grafana/grafana.ini

echo "Setting permissions..." 
sudo chown -R 472:472 /portainer/Files/AppData/Config/grafana/data

echo "Done! --> Deploy stack"
