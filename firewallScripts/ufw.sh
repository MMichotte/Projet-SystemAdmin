#!/bin/bash

#  ---------------------------------------------------------
# |Configurer UFW en fonction du vps (Morgan-Martin-Olivier)|
#  ---------------------------------------------------------

# Colors - code (Red-Blue-Orange-No color)
R="\033[0;31m"
B="\033[0;34m"
O="\033[0;33m"
N="\033[0m"

name=$(hostname)

# VPS - Olivier - hostname=vps797990
if [ $name = "vps797990" ]
then
printf "$R Starting $B ufw $N script for $O VPS-Olivier $N ...\n"
sudo apt install -y ufw
sudo sed -i 's/IPV6=yes/IPV6=no/' /etc/default/ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
printf "Basic configuration $R done !$N\n"
sleep 1
echo ""
printf "$B Allowing $R ports $N:\n" 
echo "----------------"
printf "$R 22 $N  $B(SSH)$N\n"
printf "$R 25 $N  $B(SMTP)$N\n"
printf "$R 465 $N $B(SMTP\033[0;33mS-SSL)$N\n"
printf "$R 587 $N $B(SMTP\033[0;33mS-TLS)$N\n"
printf "$R 53 $N  $B(DNS)$N\n"
printf "$R 143 $N $B(IMAP)$N\n"
printf "$R 993 $N $B(IMAP\033[0;33mS-SSL)$N\n"
sudo ufw allow 22
sudo ufw allow 25
sudo ufw allow 53
sudo ufw allow 143
sudo ufw allow 465
sudo ufw allow 587
sudo ufw allow 993
sleep 1
printf "Done\n"
sudo ufw disable
sudo ufw enable
sudo ufw status
echo ""
printf "$R Nmap $B check :$N\n"
nmap 51.178.40.194

# VPS - Morgan - hostname=vps797988 - ip=51.178.41.120
elif [ $name = "vps797988" ]
then
printf "$R Starting $B ufw $N script for $O VPS-Morgan $N ...\n"
sudo apt install -y ufw
sudo sed -i 's/IPV6=yes/IPV6=no/' /etc/default/ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
echo ""
printf "Basic configuration $R done !$N\n"
sleep 1
echo ""
printf "$B Allowing $R ports $N:\n" 
echo "----------------"
printf "$R 22 $N  $B(SSH)$N\n"
printf "$R 53 $N  $B(DNS)$N\n"
printf "$R 80 $N  $B(HTTP)$N\n"
printf "$R 443 $N $B(HTTP\033[0;33mS-SSL)$N\n"
printf "$R 5000$N $B(SQL)$N\n"
#printf "$R 44443$N $B(???)$N\n"
sudo ufw allow 22
sudo ufw allow 53
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 5000
#sudo ufw allow 44443
sleep 1
printf "Done\n"
sudo ufw disable
sudo ufw enable
sudo ufw status
echo ""
printf "$R Nmap $B check :$N\n"
nmap 51.178.41.120

# VPS - Martin - hostname=vps797989 - ip=51.178.40.108
elif [ $name = "vps797989" ]
then
printf "$R Starting $B ufw $N script for $O VPS-Martin $N ...\n"
sudo apt install -y ufw
sudo sed -i 's/IPV6=yes/IPV6=no/' /etc/default/ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
printf "Basic configuration $R done !$N\n"
sleep 1
echo ""
printf "$B Allowing $R ports $N:\n" 
echo "----------------"
printf "$R 22 $N  $B(SSH)$N\n"
printf "$R 80 $N  $B(HTTP)$N\n"
printf "$R 443 $N $B(HTTP\033[0;33mS-SSL)$N\n"
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443
sleep 1
printf "Done\n"
sudo ufw disable
sudo ufw enable
sudo ufw status
echo ""
printf "$R Nmap $B check :$N\n"
nmap 51.178.40.108

else
echo "I don't know you !"
fi