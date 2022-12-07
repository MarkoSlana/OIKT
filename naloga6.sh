#!/bin/bash

mkdir Destop
mkdir Documents
mkdir Downloads
mkdir Videos
mkdir Pictures

for x in {1..5}
do
  mkdir folder$x
done

for x in {1..5}
do
 sudo useradd -m --groups sudo uporabnik$x
done

sudo apt-get upgrade
sudo apt update
sudo apt install nginx
sudo apt install git
sudo apt-get update -y
sudo apt-get install -y net-tools

 sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
 sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
 sudo mkdir -p /etc/apt/keyrings
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
 sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
