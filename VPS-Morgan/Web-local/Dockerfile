#https://hub.docker.com/r/romeoz/docker-apache-php
FROM romeoz/docker-apache-php

# Install some useful tools for debugging
RUN apt-get update -y
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y nano vim
RUN apt-get install -y dnsutils
RUN apt-get install -y elinks curl

# Encryption port 443 configuration files
RUN apt-get install -y software-properties-common 
RUN apt-get install -y python-certbot-apache

# Creates a self made ssl certificate
RUN sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt

# Add the reuired files so that the apahce server can initialize all virtualhosts.
ADD ./www/ /var/www/
ADD ./sites-available/ /etc/apache2/sites-available/

# Security bonus for apache 403 or 404 error
COPY apache2.conf /etc/apache2/apache2.conf

# Enable the virtulhosts. 
# ADD NEW VirtualHosts HERE ! 
RUN a2ensite intranet.conf
RUN a2ensite intranet-ssl.conf 
RUN a2enmod ssl
RUN a2enmod headers
RUN a2enmod rewrite

# Restart the apache service to 'activate' the virtual hosts
RUN service apache2 reload
RUN service apache2 restart