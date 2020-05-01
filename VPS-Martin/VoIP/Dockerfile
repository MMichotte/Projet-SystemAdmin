FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y nano

# Doc Asterisk : https://doc.ubuntu-fr.org/asterisk
# Installation des dépendances
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt install -y \
  apt-utils \
  build-essential \
  wget \
  openssl \
  libxml2-dev \
  libncurses5-dev \
  uuid-dev \
  sqlite3 \
  libsqlite3-dev \
  pkg-config \
  libjansson-dev \
  libedit-dev \
  libssl-dev

RUN echo "Europe/Brussels" >> /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata

# Installation d'Asterisk
WORKDIR /usr/local/src/
RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/old-releases/asterisk-16.9.0.tar.gz
RUN tar -xvzf asterisk-16.9.0.tar.gz
WORKDIR /usr/local/src/asterisk-16.9.0/
RUN ./configure
RUN make
RUN make install
#décommenter la ligne suivante pour générer des fichies sample
#RUN make samples
RUN make config

COPY ./config/asterisk/ /etc/asterisk/

#ports pour sip :
EXPOSE 5060/udp
EXPOSE 5060/tcp
#ports pour rtp :
EXPOSE 19000-20000/udp

#Run asterisk
CMD ["asterisk", "-f"]