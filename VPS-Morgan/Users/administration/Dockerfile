FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y vim nano
RUN apt-get install -y dnsutils net-tools iputils-ping 
RUN apt-get install -y curl elinks

# Pour le partage de fichiers
RUN apt-get install -y samba samba-common-bin smbclient cifs-utils

RUN useradd -ms /bin/bash  administration
USER administration
COPY .bashrc /home/administration/.bashrc

# Permet de maintenir le conteneur en vie
CMD tail -f /dev/null
