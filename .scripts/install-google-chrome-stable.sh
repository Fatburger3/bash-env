#!/bin/bash

sudo echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list &&
wget https://dl.google.com/linux/linux_signing_key.pub &&
sudo apt-key add linux_signing_key.pub &&
sudo apt update &&
sudo apt install google-chrome-stable;
