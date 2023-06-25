#!/bin/bash
# install dependecies
sudo apt install -y curl wget git zip dnsutils net-tools screen
# install nuclei and nuclei templates
wget https://github.com/projectdiscovery/nuclei/releases/download/v2.9.6/nuclei_2.9.6_linux_amd64.zip
unzip nuclei_2.9.6_linux_amd64.zip
sudo mv nuclei /usr/local/bin/nuclei
nuclei -ut
# git clone runners
git clone https://github.com/nullg0re/nuclei-runners
# make xfiles and run directories
mkdir nuclei-runners/xfiles
# make output directory
cd ~
mkdir output

