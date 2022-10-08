FROM archlinux:base

MAINTAINER awesome-doge

ENV DEBIAN_FRONTEND noninteractive

RUN pacman -Syuy --noconfirm
RUN pacman -S --noconfirm sudo wget

RUN  wget https://raw.githubusercontent.com/ton-blockchain/mytonctrl/master/scripts/install.sh


RUN bash install.sh -m lite