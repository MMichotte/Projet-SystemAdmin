FROM ubuntu
RUN apt-get update -y

#  ------
# |Outils|
#  ------
RUN apt-get install -y vim nano telnet mutt dnsutils net-tools iputils-ping mailutils

#  ------------
# |Petit Script|
#  ------------
RUN chmod +x script-mail/*
COPY script-mail/* /usr/bin/

#  -----------------------------------
# |Permet de générer un certificat SSL|
#  -----------------------------------
RUN openssl req -new -x509 -days 3650 -nodes -newkey rsa:4096 -out /etc/ssl/certs/mailserver.pem -keyout /etc/ssl/private/mailserver.pem -subj "/C=BE/ST=Braban-wallon/L=Wavre/O=Ephec/OU=IT/CN=mail.wt2-5.ephec-ti.be"

#  --------------------------------------------
# |Installation - Mariadb (base de données sql)|
#  --------------------------------------------
RUN apt-get install -y mariadb-server

#  -----------------------
# |Configuration - Mariadb|
#  -----------------------
COPY config-sql/create-db.sql config-sql/create-db.sql
COPY config-sql/create-users.sql config-sql/create-users.sql

#  -----------------------------
# |Installation - Postfix (SMTP)|
#  -----------------------------
RUN apt-get install -y postfix postfix-mysql 

#  ------------------------------
# |Configuration - Postfix (SMTP)|
#  ------------------------------
RUN groupadd -g 5000 vhosts && useradd -g vhosts -u 5000 vhosts -d /var/mail/vhosts -s /bin/false -m
COPY config-postfix/main.cf /etc/postfix/main.cf
COPY config-postfix/master.cf /etc/postfix/master.cf
COPY config-postfix/generic /etc/postfix/generic
COPY config-postfix/mysql-virtual-mailbox-domains.cf /etc/postfix/mysql-virtual-mailbox-domains.cf
COPY config-postfix/mysql-virtual-mailbox-maps.cf /etc/postfix/mysql-virtual-mailbox-maps.cf
COPY config-postfix/vmailbox /etc/postfix/vmailbox
RUN postmap /etc/postfix/vmailbox

#  -----------------------------
# |Installation - Dovecot (IMAP)|
#  -----------------------------
RUN apt-get install -y dovecot-core dovecot-imapd dovecot-mysql
RUN apt-get install -y dovecot-sieve dovecot-managesieved

#  ------------------------------
# |Configuration - Dovecot (IMAP)|
#  ------------------------------
COPY config-dovecot/dovecot.conf /etc/dovecot/dovecot.conf
COPY config-dovecot/dovecot-sql.conf.ext /etc/dovecot/dovecot-sql.conf.ext
COPY config-dovecot/10-auth.conf /etc/dovecot/conf.d/10-auth.conf
COPY config-dovecot/10-mail.conf /etc/dovecot/conf.d/10-mail.conf
COPY config-dovecot/10-master.conf /etc/dovecot/conf.d/10-master.conf
COPY config-dovecot/auth-sql.conf.ext /etc/dovecot/conf.d/auth-sql.conf.ext
COPY config-dovecot/10-ssl.conf /etc/dovecot/conf.d/10-ssl.conf

COPY config-dovecot/20-lmtp.conf /etc/dovecot/conf.d/20-lmtp.conf
COPY config-dovecot/default.sieve /var/lib/dovecot/sieve/default.sieve
RUN sievec /var/lib/dovecot/sieve/default.sieve
RUN chown -R vhosts:vhosts /var/lib/dovecot/sieve/*
RUN chmod a+x /var/lib/dovecot

#  ---------------------------
# |Installation - Spamassassin|
#  ---------------------------
RUN apt-get install -y spamassassin spamc
RUN groupadd spamd
RUN useradd -g spamd -s /bin/false -d /var/log/spamassassin spamd
RUN mkdir /var/log/spamassassin
RUN chown spamd:spamd /var/log/spamassassin
COPY config-spamassassin/spamassassin /etc/default/spamassassin
COPY config-spamassassin/local.cf /etc/spamassassin/local.cf

#  --------------------------------------------------------
# |Demare le conteneur docker et execute quelques commandes|
#  --------------------------------------------------------
CMD ["sh", "-c", "service mysql start; mysql -u root < config-sql/create-db.sql; mysql -u root < config-sql/create-users.sql; sed -ie 's/x@x/'$(echo $(whoami)@$(hostname))'/' /etc/postfix/generic; postmap /etc/postfix/generic; service postfix start; service spamassassin start; service dovecot start; tail -F /var/log/mail.log"]
