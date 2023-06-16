#!/bin/bash

# Download AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip AWS CLI
unzip awscliv2.zip

# Install AWS CLI
sudo ./aws/install
