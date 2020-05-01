#!/bin/bash

R="\033[0;31m"
B="\033[0;34m"
O="\033[0;33m"
G="\033[0;32m"
N="\033[0m"

printf "$O Downloading $B fail2ban... $N\n"
sudo apt-get install -y fail2ban
printf "\n$O Configuring $B fail2ban...$N\n"
sudo cp jail.local /etc/fail2ban/jail.d/
printf "\n$O Reloading $B fail2ban...$N\n"
sudo service fail2ban restart
sleep 3
printf "\n$B fail2ban $G up and running $N\n"
sudo fail2ban-client status 
printf "\n"
sudo fail2ban-client status asterisk 