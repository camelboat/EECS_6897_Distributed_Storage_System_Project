#!/bin/bash

# Mount the disk /dev/sdb to /mnt/sdb for more disk spaces
echo y | sudo mkfs.ext4 /dev/sdb
sudo mkdir /mnt/sdb
sudo mount /dev/sdb /mnt/sdb
# Then run everything under /mnt/sdb

# Install Java
echo y | sudo apt install default-jdk
echo y | sudo apt install default-jre

# Install Maven
sudo apt install maven

# Clone scripts and data
cd /mnt/sdb
git clone https://github.com/camelboat/EECS_6897_Distributed_Storage_System_Project_Scripts
git clone https://github.com/camelboat/EECS_6897_Distributed_Storage_System_Project_Data.git