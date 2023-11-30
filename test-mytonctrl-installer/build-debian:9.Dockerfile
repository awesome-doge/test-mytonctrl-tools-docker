FROM debian:9

MAINTAINER awesome-doge

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install wget sudo -y
RUN apt-get install --reinstall systemd -y

RUN wget https://raw.githubusercontent.com/awesome-doge/mytonctrl/ninja/scripts/toninstaller.sh

RUN sudo bash toninstaller.sh