#!/bin/bash

sudo docker run -d -p 9000:9000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
echo "Done!!"
echo " App template --> https://raw.githubusercontent.com/pi-hosted/pi-hosted/master/template/portainer-v2-arm64.json"
