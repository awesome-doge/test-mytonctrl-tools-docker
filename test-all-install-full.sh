cd test-mytonctrl-install-full

sudo docker build -t test-mytonctrl-install-full:ubuntu18.04 -f build-ubuntu:18.04.Dockerfile  . 
sudo docker build -t test-mytonctrl-install-full:ubuntu20.04 -f build-ubuntu:20.04.Dockerfile  . 
sudo docker build -t test-mytonctrl-install-full:ubuntu22.04 -f build-ubuntu:22.04.Dockerfile .  

sudo docker build -t test-mytonctrl-install-full:debian8 -f build-debian:8.Dockerfile  . 
sudo docker build -t test-mytonctrl-install-full:debian9 -f build-debian:9.Dockerfile  . 
sudo docker build -t test-mytonctrl-install-full:debian10 -f build-debian:10.Dockerfile  . 
sudo docker build -t test-mytonctrl-install-full:debian11 -f build-debian:11.Dockerfile  . 
sudo docker build -t test-mytonctrl-install-full:debian12 -f build-debian:12.Dockerfile  . 

sudo docker build -t test-mytonctrl-install-full:archlinuxbase -f build-archlinux:base.Dockerfile  . 

sudo docker build -t test-mytonctrl-install-full:centos7.9.2009 -f build-centos:centos7.9.2009.Dockerfile  . 
sudo docker build -t test-mytonctrl-install-full:centos8.4.2105 -f build-centos:centos8.4.2105.Dockerfile  . 