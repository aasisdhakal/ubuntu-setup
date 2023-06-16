#!/bin/bash

# Update package lists
sudo apt update

# Install Git
sudo apt install git -y

# Verify Git installation
git --version
