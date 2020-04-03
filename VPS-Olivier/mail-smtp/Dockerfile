FROM ubuntu
RUN apt-get update -y

# Outils utils
RUN apt-get install -y vim nano
RUN apt-get install -y dnsutils net-tools iputils-ping

# Package principaux
RUN apt-get install -y postfix mailutils dovecot-imapd openssl mutt

RUN groupadd -g 5000 vmail
RUN useradd -m -u 5000 -g 5000 -s /bin/bash vmail

COPY ./config-postfix/vhosts /etc/postfix/vhosts
COPY ./config-postfix/vmaps /etc/postfix/vmaps
RUN postmap /etc/postfix/vmaps

COPY ./config-postfix/main.cf /etc/postfix/main.cf
RUN /etc/init.d/postfix restart

# Petit script permettant d'accéder à une boite mail (morgan-martin-olivier)
COPY ./config-postfix/readmail /usr/bin/readmail
RUN chmod +x /usr/bin/readmail

# Lance le container docker
CMD postfix start-fg