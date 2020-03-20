#https://hub.docker.com/r/romeoz/docker-apache-php
FROM romeoz/docker-apache-php

# Install some useful tools for debugging
RUN apt-get update -y
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y nano

# Add the reuired files so that the apahce server can initialize all virtualhosts.
ADD ./www/ /var/www/
ADD ./sites-available/ /etc/apache2/sites-available/

# Security bonus for apache 403 or 404 error
COPY apache2.conf /etc/apache2/apache2.conf

# Enable the virtulhosts. 
# ADD NEW VirtualHosts HERE ! 
RUN a2ensite intranet.conf

# Restart the apache service to 'activate' the virtual hosts
RUN service apache2 restart