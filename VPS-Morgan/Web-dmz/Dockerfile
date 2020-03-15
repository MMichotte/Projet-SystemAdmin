#https://hub.docker.com/r/romeoz/docker-apache-php
FROM romeoz/docker-apache-php

# Install some useful tools for debugging
RUN apt-get update -y
RUN apt-get install -y net-tools
RUN apt-get install -y nano

# Add the reuired files so that the apahce server can initialize all virtualhosts.
add ./www/ /var/www/
add ./sites-available/ /etc/apache2/sites-available/

# Enable the virtulhosts. 
# ADD NEW VirtualHosts HERE ! 
run a2ensite b2b.conf
run a2ensite www.conf

# Restart the apache service to 'activate' the virtual hosts
run service apache2 restart


