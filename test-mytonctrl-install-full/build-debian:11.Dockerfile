FROM debian:11

MAINTAINER awesome-doge

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install wget sudo -y
RUN apt-get install --reinstall systemd -y

RUN  wget https://raw.githubusercontent.com/ton-blockchain/mytonctrl/master/scripts/install.sh


RUN bash install.sh -m full