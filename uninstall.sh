#!/usr/bin/env bash

DST_PATH="/storage/.config/x375"
SYSTEMD_PATH="/storage/.config/system.d/"


echo "Desactivation of Fan service"
systemctl stop x735-fan
systemctl disable x735-fan

echo "Desactivation of Power Management service"
systemctl stop x735-pwr
systemctl disable x735-pwr

echo "Remove services ..."
rm -v $SYSTEMD_PATH/x735-fan.service
rm -v $SYSTEMD_PATH/x735-pwr.service

echo "Remove Scripts ..."
rm -Rfv $DST_PATH
