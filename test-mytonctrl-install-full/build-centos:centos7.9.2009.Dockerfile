FROM centos:centos7.9.2009	

MAINTAINER awesome-doge

ENV DEBIAN_FRONTEND noninteractive

RUN yum update -y
RUN yum install wget sudo -y

RUN  wget https://raw.githubusercontent.com/ton-blockchain/mytonctrl/master/scripts/install.sh


RUN bash install.sh -m full