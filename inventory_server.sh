#!/bin/bash
echo "checking the kernel version"
uname -r
sleep 2
echo "checking the hardrive"
lsblk
sleep 1
echo "checking the number of processors"
nproc
sleep 1
echo "checking the os version"
cat /etc/os-release
