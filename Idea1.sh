#!/bin/bash
echo "installing required packages"
apt-get install vlan
cp idea1_vlan /etc/network/interfaces.d/vlans
