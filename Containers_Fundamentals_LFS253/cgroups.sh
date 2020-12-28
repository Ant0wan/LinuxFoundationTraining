#!/bin/sh
# Log as sudo
sudo -i

# Install cgroup-tools
apt install -y cgroup-tools

# List all cgroups
lscgroup

# Process cgroup detail
cat /proc/1/cgroup

# Freezer group (frozen or thawed)
cd /sys/fs/cgroup/freezer/
mkdir mycgroup
cd mycgroup

# Task file holds PID of the group: freeze/thawed
ls
cat tasks
echo <PID> >> tasks
echo FROZEN > freezer.state
cat freezer.state
echo THAWED > freezer.state
