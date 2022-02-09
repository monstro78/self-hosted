#!/bin/bash

#Dhmiourgia directories
sudo mkdir -p /portainer/Files/AppData/Config/prometheus/config
sudo mkdir -p /portainer/Files/AppData/Config/prometheus/data
sudo mkdir -p /portainer/Files/AppData/Config/grafana/data
sudo wget -O /portainer/Files/AppData/Config/prometheus/config/prometheus.yml
