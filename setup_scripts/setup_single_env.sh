#!/bin/bash

BLOCK_DEVICE="nvme0n1p4"

# Mount the disk /dev/sdb to /mnt/sdb for more disk spaces
echo y | sudo mkfs.ext4 /dev/$BLOCK_DEVICE
sudo mkdir /mnt/sdb
sudo mount /dev/$BLOCK_DEVICE /mnt/sdb
# Then run everything under /mnt/sdb

# Vimrc
cd /root/
wget https://gist.githubusercontent.com/simonista/8703722/raw/d08f2b4dc10452b97d3ca15386e9eed457a53c61/.vimrc

sudo apt update

# Install Java
echo y | sudo apt install default-jdk
echo y | sudo apt install default-jre

# Install Maven
echo y | sudo apt install maven

# Install cgroup tools
echo y | sudo apt install cgroup-tools

# Install inotify-tools
echo y | sudo apt install inotify-tools

# Install sysstat for iostat
echo y | sudo apt install sysstat

# Clone scripts and data
cd /mnt/sdb
git clone https://github.com/camelboat/EECS_6897_Distributed_Storage_System_Project_Scripts.git
git clone https://github.com/camelboat/EECS_6897_Distributed_Storage_System_Project_Data.git

sudo mkdir -p /mnt/sdb/archive_dbs/sst_dir/sst_last_run
sudo mkdir -p /mnt/sdb/archive_dbs/compaction_meta
sudo mkdir -p /mnt/sdb/archive_dbs/manifest_meta

cd /mnt/sdb
git clone https://github.com/brianfrankcooper/YCSB
cd /mnt/sdb/YCSB
mvn -pl com.yahoo.ycsb:rocksdb-binding -am clean package

# Check space of the disk where current path is
df -Ph . | tail -1 | awk '{print $4}'
