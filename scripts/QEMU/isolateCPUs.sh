#!/bin/bash

# Config for my R7 5800X
# Place into this location: /etc/libvirt/hooks/qemu.d/<VM-name>/prepare/begin/

sudo systemctl set-property --runtime -- user.slice AllowedCPUs=6,7,14,15
sudo systemctl set-property --runtime -- system.slice AllowedCPUs=6,7,14,15
sudo systemctl set-property --runtime -- init.slice AllowedCPUs=6,7,14,15
