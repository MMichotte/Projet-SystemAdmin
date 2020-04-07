FROM ubuntu
RUN apt-get update -y

# Outils pour modifier / tester des configs
RUN apt-get install -y vim nano telnet mutt
RUN apt-get install -y dnsutils net-tools iputils-ping mailutils

# Petit Script
COPY config-postfix/readmail /usr/bin/readmail
RUN chmod +x /usr/bin/readmail

# Permet de générer un certificat SSL
RUN openssl req -new -x509 -days 3650 -nodes -newkey rsa:4096 -out /etc/ssl/certs/mailserver.pem -keyout /etc/ssl/private/mailserver.pem -subj "/C=BE/ST=Braban-wallon/L=Wavre/O=Ephec/OU=IT/CN=mail.wt2-5.ephec-ti.be"

# Installation - Mariadb (base de données sql)
RUN apt-get install -y mariadb-server

# Configuration - Mariadb
COPY config-sql/create-db.sql config-sql/create-db.sql
COPY config-sql/create-users.sql config-sql/create-users.sql

# Installation - Postfix (SMTP)
RUN apt-get install -y postfix postfix-mysql 

# Configuration - Postfix (SMTP)
RUN groupadd -g 5000 vhosts
RUN useradd -g vhosts -u 5000 vhosts -d /var/mail/vhosts -s /bin/false -m

COPY config-postfix/main.cf /etc/postfix/main.cf
COPY config-postfix/generic /etc/postfix/generic
COPY config-postfix/mysql-virtual-mailbox-domains.cf /etc/postfix/mysql-virtual-mailbox-domains.cf
COPY config-postfix/mysql-virtual-mailbox-maps.cf /etc/postfix/mysql-virtual-mailbox-maps.cf
COPY config-postfix/vmailbox /etc/postfix/vmailbox

RUN postmap /etc/postfix/vmailbox

# Installation - Dovecot (IMAP)
RUN apt-get install -y dovecot-core dovecot-imapd dovecot-mysql

# Configuration - Dovecot (IMAP)
COPY config-dovecot/dovecot.conf /etc/dovecot/dovecot.conf
COPY config-dovecot/dovecot-sql.conf.ext /etc/dovecot/dovecot-sql.conf.ext
COPY config-dovecot/10-auth.conf /etc/dovecot/conf.d/10-auth.conf
COPY config-dovecot/10-mail.conf /etc/dovecot/conf.d/10-mail.conf
COPY config-dovecot/10-master.conf /etc/dovecot/conf.d/10-master.conf
COPY config-dovecot/auth-sql.conf.ext /etc/dovecot/conf.d/auth-sql.conf.ext

#EXPOSE 25 143

# Lance le container docker
CMD ["sh", "-c", "service mysql start; service mailutils start; mysql -u root < config-sql/create-db.sql; mysql -u root < config-sql/create-users.sql; sed -ie 's/x@x/'$(echo $(whoami)@$(hostname))'/' /etc/postfix/generic; postmap /etc/postfix/generic; service postfix start; service dovecot start; tail -F /var/log/mail.log"]
