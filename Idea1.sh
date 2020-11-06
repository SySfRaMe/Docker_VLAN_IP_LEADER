#!/bin/bash
echo "installing required packages"
echo "guide from: https://engineerworkshop.com/blog/raspberry-pi-vlan-how-to-connect-your-rpi-to-multiple-networks/"
apt-get install vlan
cp idea1_vlan /etc/network/interfaces.d/vlans
