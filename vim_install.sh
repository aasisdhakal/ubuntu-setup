#!/bin/bash

# Download VIM
sudo git clone git@github.com:vim/vim.git

cd vim/src

sudo make

# Install VIM
sudo make install

# VIM version
vim -v


