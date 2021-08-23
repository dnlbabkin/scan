#!/bin/bash

echo "Enter subnet:"
read subnet

echo "Enter port:"
read port

nmap -p $port -sT $subnet -oG res

cat res |grep open >result
cat result

