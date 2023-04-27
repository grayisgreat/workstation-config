#!/usr/bin/env bash
#
#  Run workstation install scripts
#
set -e


echo "########################################################"
echo "Staring Install"
echo "########################################################"

sudo -K
sudo true;
clear

WDIR="$(dirname "$0")"
source ${WDIR}/scripts/homebrew.sh
source ${WDIR}/scripts/common.sh


echo "########################################################################################"
echo "Installation Complete! Rebooting your computer is recommended, but please restart iTerm"
echo "########################################################################################"
