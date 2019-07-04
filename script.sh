#!/bin/sh
#coding=utf8
set -v on
echo $PATH

hostname
cat /etc/resolv.conf

python -V

pwd

wget -c https://download-installer.cdn.mozilla.net/pub/firefox/releases/67.0.4/linux-x86_64/zh-CN/firefox-67.0.4.tar.bz2
tar -xvf firefox-67.0.4.tar.bz2

rm -rf /usr/lib64/firefox
mv firefox /usr/lib64
rm /usr/bin/firefox
ln -s /usr/lib64/firefox/firefox /usr/bin/firefox

pip3 install selenium
wget https://github.com/mozilla/geckodriver/releases/download/v0.15.0/geckodriver-v0.15.0-linux64.tar.gz

tar -zxvf geckodriver-v0.15.0-linux64.tar.gz

./microservices1.py