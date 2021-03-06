#!/usr/bin/env bash

# Client should be the one who visits nvme device on other nodes(targets) 

#NVMe over RoCE setup for client side
modprobe nvme-rdma

sudo apt install uuid-dev

# git clone https://github.com/linux-nvme/nvme-cli.git

# cd nvme-cli
# make
# make install

sudo apt install nvme-cli

nvme gen-hostnqn > /etc/nvme/hostnqn
