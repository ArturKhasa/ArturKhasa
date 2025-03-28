#!/bin/bash
# Запуск
# wget https://raw.githubusercontent.com/ArturKhasa/ArturKhasa/refs/heads/main/docker-installer.sh -O docker-installer.sh
# chmod +x docker-installer.sh
# ./docker-installer.sh

sudo apt update
sudo apt install curl software-properties-common ca-certificates apt-transport-https -y
wget -O- https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor | sudo tee /etc/apt/keyrings/docker.gpg > /dev/null
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu jammy stable"| sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo apt-get install docker-compose
