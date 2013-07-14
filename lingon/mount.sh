#!/bin/sh

cryptsetup luksOpen /dev/sda1 alpha
cryptsetup luksOpen /dev/sdb1 beta

vgchange -a y
btrfs device scan
mount -a
