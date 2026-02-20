#!/bin/bash

# Config for my R7 5800X
# Place into this location: /etc/libvirt/hooks/qemu.d/<VM-name>/release/end/

sudo systemctl set-property --runtime -- user.slice AllowedCPUs=0-15
sudo systemctl set-property --runtime -- system.slice AllowedCPUs=0-15
sudo systemctl set-property --runtime -- init.scope AllowedCPUs=0-15
