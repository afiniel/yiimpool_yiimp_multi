#!/usr/bin/env bash
#####################################################
# Created by afiniel for crypto use...
#####################################################

source /etc/functions.sh
source /etc/yiimpool.conf
source $STORAGE_ROOT/yiimp/.yiimp.conf

cd /tmp

apt_install lsb-release figlet update-motd \
landscape-common update-notifier-common
wait $!
cd /tmp
sudo rm -r /etc/update-motd.d/
sudo mkdir /etc/update-motd.d/
sudo touch /etc/update-motd.d/00-header ; sudo touch /etc/update-motd.d/10-sysinfo ; sudo touch /etc/update-motd.d/90-footer
sudo chmod +x /etc/update-motd.d/*
sudo cp -r 00-header 10-sysinfo 90-footer /etc/update-motd.d/
cd /tmp
sudo cp -r screens /usr/bin/
sudo chmod +x /usr/bin/screens
echo '
clear
run-parts /etc/update-motd.d/ | sudo tee /etc/motd
' | sudo -E tee /usr/bin/motd >/dev/null 2>&1

sudo chmod +x /usr/bin/motd
exit 0
