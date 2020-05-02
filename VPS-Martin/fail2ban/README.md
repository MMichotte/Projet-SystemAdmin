sudo service fail2ban restart
sudo fail2ban-client status 

sudo fail2ban-client set loglevel DEBUG

sudo fail2ban-client set loglevel INFO

sudo cat /var/log/fail2ban.log


sudo truncate -s 0 /var/log/fail2ban.log