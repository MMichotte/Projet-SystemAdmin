FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y vim
RUN apt-get install -y nano
RUN apt-get install -y dnsutils
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y curl
RUN apt-get install -y elinks

# Permet de maintenir le conteneur en vie
CMD tail -f /dev/null 