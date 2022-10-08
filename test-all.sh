sudo docker build -t toninstaller:debian10 -f build-debian:10.Dockerfile  . --no-cache
sudo docker build -t toninstaller:debian11 -f build-debian:11.Dockerfile  . --no-cache
sudo docker build -t toninstaller:ubuntu18.04 -f build-ubuntu:18.04.Dockerfile  . --no-cache
sudo docker build -t toninstaller:ubuntu20.04 -f build-ubuntu:20.04.Dockerfile  . --no-cache
sudo docker build -t toninstaller:ubuntu22.04 -f build-ubuntu:22.04.Dockerfile . --no-cache 
sudo docker build -t toninstaller:centos7.9.2009 -f build-centos:centos7.9.2009.Dockerfile  . --no-cache
sudo docker build -t toninstaller:archlinuxbase -f build-archlinux:base.Dockerfile  . --no-cache