#!/bin/bash

PROGS="vlc vim tmux r-base r-base-dev gdb git gparted gufw htop"

apt-get update
apt-get install $PROGS
