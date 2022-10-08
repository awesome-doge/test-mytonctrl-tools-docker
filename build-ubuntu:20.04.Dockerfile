FROM ubuntu:20.04

MAINTAINER awesome-doge

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install wget sudo -y
RUN apt-get install --reinstall systemd -y

# RUN wget https://raw.githubusercontent.com/ton-blockchain/mytonctrl/mas>
# RUN sudo bash install.sh -m full
# RUN yum update -y
#RUN yum install wget sudo -y



RUN wget https://raw.githubusercontent.com/awesome-doge/mytonctrl/ninja/scripts/toninstaller.sh
RUN cat  toninstaller.sh
RUN sudo bash toninstaller.sh