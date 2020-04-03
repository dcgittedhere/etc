#! /bin/bash

# pikaur should be installed

sudo pacman -S --needed base-devel
sudo pacman -S smartmontools
pikaur -S linux-headers
pikaur -S dkms
pikaur -S spl-utils
pikaur -S spl-dkms
pikaur -S zfs-utils
pikaur -S zfs-dkms

sudo systemctl enable zfs-import-cache
sudo systemctl enable zfs-mount
sudo systemctl enable zfs-import.target
sudo systemctl enable zfs.target
sudo systemctl start zfs.target
sudo modprobe zfs
sudo zpool status