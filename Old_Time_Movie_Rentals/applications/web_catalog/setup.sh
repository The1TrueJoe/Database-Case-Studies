#!/bin/bash

# Update
sudo apt update
sudo apt upgrade -y

# Install basics
sudo apt install ssh
sudo apt install git

# Install npm
sudo apt install npm -y

# Install java
sudo apt install default-jre -y
sudo apt install default-jdk -y

# Git
mkdir git
cd git
git clone https://github.com/The1TrueJoe/Database-Case-Studies
cd Database-Case-Studies