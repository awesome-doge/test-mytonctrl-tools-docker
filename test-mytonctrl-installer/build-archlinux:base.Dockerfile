FROM archlinux:base

MAINTAINER awesome-doge

ENV DEBIAN_FRONTEND noninteractive

RUN pacman -Syuy --noconfirm
RUN pacman -S --noconfirm sudo wget

RUN wget https://raw.githubusercontent.com/awesome-doge/mytonctrl/ninja/scripts/toninstaller.sh

RUN sudo bash toninstaller.sh