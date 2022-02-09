#!/bin/bash

#Dhmiourgia directories
sudo mkdir -p /portainer/Files/AppData/Config/prometheus/config
sudo mkdir -p /portainer/Files/AppData/Config/prometheus/data
sudo mkdir -p /portainer/Files/AppData/Config/grafana/data

#Download config file
sudo wget -O /portainer/Files/AppData/Config/prometheus/config/prometheus.yml https://raw.githubusercontent.com/monstro78/self-hosted/main/monitoring/prometheus.yml
sudo touch /portainer/Files/AppData/Config/grafana/grafana.ini

#Permissions
sudo chown -R 472:472 /portainer/Files/AppData/Config/grafana/data

echo "Done! --> Deploy to stack"
