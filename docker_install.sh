#!/bin/bash

# Update package lists
sudo apt update

# Install dependencies
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

# Add Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add Docker repository
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update package lists (again)
sudo apt update

# Install Docker
sudo apt install docker-ce docker-ce-cli containerd.io -y

# Add current user to the "docker" group
sudo usermod -aG docker $USER

# Enable Docker service to start on boot
sudo systemctl enable docker

# Verify Docker installation
docker --version

# Creating Dir for docker compose
mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/download/v2.3.3/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose

#Giving Correct permission
chmod +x ~/.docker/cli-plugins/docker-compose

# Verify docker compose version
docker compose version
