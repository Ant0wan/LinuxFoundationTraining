#!/usr/bin/env bash

# List Root Directory
dir=("/" "/home" "/var" "/opt" "/bin")

for name in ${dir[@]}
do
	echo
	echo $name ":"
	ls -F $name
done

# Filesystem Hierarchy Standard
firefox https://refspecs.linuxfoundation.org/FHS_3.0/fhs-3.0.pdf
