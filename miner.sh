#!/bin/bash

sudo pkill -f qubic.li
sudo systemctl disable qubic.li
pkill -f qubic.li
mkdir -p /q
cd /q
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i /q/packages-microsoft-prod.deb
rm /q/packages-microsoft-prod.deb
sudo apt-get update && sudo apt-get install -y dotnet-sdk-6.0
printf 'export DOTNET_CLI_TELEMETRY_OPTOUT=1' >> ~/.bashrc
source ~/.bashrc
wget https://qubic.li/cloud-init/qli-Service-install.sh -O /q/installer.sh
chmod u+x /q/installer.sh

sudo /q/./installer.sh 8 eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJJZCI6ImU2NmViMmFlLWIzNDYtNDAyMC04Yzg3LTY2MjhkNzk0NDJiOCIsIk1pbmluZyI6IiIsIm5iZiI6MTY3ODgyMzI1NiwiZXhwIjoxNzEwMzU5MjU2LCJpYXQiOjE2Nzg4MjMyNTYsImlzcyI6Imh0dHBzOi8vcXViaWMubGkvIiwiYXVkIjoiaHR0cHM6Ly9xdWJpYy5saS8ifQ.xGpQ2YPZH84VhEwfR68vuEyzbV-GbtgpmVC0lTgwLTAUk0xHNUcjMtBRIvoOSoLuQqnSBydQtR9npTCSWMqrzw
