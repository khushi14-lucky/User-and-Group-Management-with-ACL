#!/bin/bash
# User and Group setup
sudo useradd suhail
sudo passwd Khushi@24
sudo groupadd developers
sudo usermod -aG developers suhail
