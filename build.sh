#!/bin/bash

echo "\n####################################################################
#                      Start apt update                            #
####################################################################\n"
apt-get update
echo "\n####################################################################
#                      Start apt upgrade                           #
####################################################################\n"
apt-get -y upgrade
echo "\n####################################################################
#                      Start apt autoremove                        #
####################################################################\n"
apt-get autoremove

echo "\n####################################################################
#                      Start settings prefecture                   #
####################################################################\n"
echo "# Make workspace.\n"
mkdir $HOME/workspace

echo "# Install basic apps.\n"
app-get install -y git python3-pip npm php net-tools bash-completion locate



# 日本語設定を入れる
echo "# Construction of Japanese environment.\n"
apt-get install -y language-pack-ja
sudo update-locale LANG=ja_JP.UTF8

echo "# Check locale\n"
locale -a

#日本語設定を反映させる為再起動する
reboot

exit 0;