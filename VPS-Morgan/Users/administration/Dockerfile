FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y vim nano
RUN apt-get install -y dnsutils net-tools iputils-ping 
RUN apt-get install -y curl elinks

RUN useradd -ms /bin/bash  administration
USER administration
COPY .bashrc /home/administration/.bashrc

# Permet de maintenir le conteneur en vie
CMD tail -f /dev/null
