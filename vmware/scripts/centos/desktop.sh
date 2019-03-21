#!/bin/bash

# Only install desktop when variable passed in
if [[ ! "$DESKTOP" =~ ^(true|yes|on|1|TRUE|YES|ON])$ ]]; then
  exit
fi

USERNAME=packer

cat /etc/redhat-release
if grep -q -i "release 7" /etc/redhat-release ; then
    # set the graphical.target for systemd so it will run startx on boot
    ln -sf /lib/systemd/system/graphical.target /etc/systemd/system/default.target
fi