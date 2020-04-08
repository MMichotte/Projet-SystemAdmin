FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y nano

#Doc Asterisk : https://doc.ubuntu-fr.org/asterisk
RUN apt-get install -y asterisk 

COPY ./config/default/asterisk /etc/default/asterisk
COPY ./config/asterisk/ /etc/asterisk/

RUN service asterisk reload

EXPOSE 5060 5060/udp

#Run asterisk
CMD ["/usr/sbin/asterisk", "-f"]

