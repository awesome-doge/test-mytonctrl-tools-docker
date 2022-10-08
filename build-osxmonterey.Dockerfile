FROM ubuntu:22.04

MAINTAINER awesome-doge

ENV DEBIAN_FRONTEND noninteractive
RUN brew update
RUN brew install wget sudo -y

RUN wget https://raw.githubusercontent.com/awesome-doge/mytonctrl/ninja/scripts/toninstaller.sh
RUN cat  toninstaller.sh
RUN sudo bash toninstaller.sh