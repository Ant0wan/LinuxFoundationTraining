#!/bin/sh

# List namespaces
ls -l /proc/1/ns
ip netns add namespace1
ip netns add namespace2
ip netns list

# Create a pair of interconnected virtual ethernet devices
ip link add veth1 type veth peer name veth2


