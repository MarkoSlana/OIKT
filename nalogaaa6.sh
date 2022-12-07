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
