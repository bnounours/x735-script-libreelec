#!/usr/bin/env bash

DST_PATH="/storage/.config/x375"
SYSTEMD_PATH="/storage/.config/system.d/"

echo "Make script executable"
chmod +x *.sh

echo "This script install the X735 management script in $DST_PATH"
mkdir -p $DST_PATH 2>/dev/null

cp -v x735-fan.sh $DST_PATH
cp -v x735-pwr.sh $DST_PATH
cp -v x735-softsd.sh $DST_PATH

echo "Installation of services to run automatically Fan and Power Managemer"
cp -v x735-fan.service $SYSTEMD_PATH/x735-fan.service
cp -v x735-pwr.service $SYSTEMD_PATH/x735-pwr.service

systemctl daemon-reload

echo "Activation of Fan service"
systemctl enable x735-fan
systemctl start x735-fan

echo "Activation of Power Management service"
systemctl enable x735-pwr
systemctl start x735-pwr

sleep 2

echo "Status of Fan service ..."
systemctl status --no-pager x735-fan
echo "Status of Power Management service ..."
systemctl status --no-pager x735-pwr
