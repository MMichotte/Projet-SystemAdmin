#https://hub.docker.com/r/romeoz/docker-apache-php
FROM romeoz/docker-apache-php

# Install some useful tools for debugging
RUN apt-get update -y
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y nano vim
RUN apt-get install -y dnsutils
RUN apt-get install -y elinks curl

# Add the reuired files so that the apache server can initialize all virtualhosts.
ADD ./www/ /var/www/
ADD ./sites-available/ /etc/apache2/sites-available/

# Encryption port 443 configuration files
RUN apt-get install -y software-properties-common 
RUN apt-get install -y python-certbot-apache

# Security bonus for apache 403 or 404 error
COPY apache2.conf /etc/apache2/apache2.conf

# Enable the virtulhosts. 
# ADD NEW VirtualHosts HERE ! 
RUN a2ensite b2b.conf
RUN a2ensite www.conf

# Restart the apache service to 'activate' the virtual hosts
RUN service apache2 restart
