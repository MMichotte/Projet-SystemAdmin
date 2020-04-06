FROM ubuntu
RUN apt-get update -y

# Outils pour modifier / tester des configs
RUN apt-get install -y vim nano
RUN apt-get install -y dnsutils net-tools iputils-ping mailutils

# Postfix (SMTP)
RUN apt-get install -y postfix postfix-mysql 

# Dovecot (IMAP)
RUN apt-get install -y dovecot-core dovecot-imapd dovecot-mysql

# Mariadb (base de données sql)
RUN apt-get install mariadb-server

# Configuration db
COPY ./create-db.sql /etc/create-db.sql
COPY ./create-users.sql /etc/create-users.sql

# Lance le container docker
CMD postfix start-fg