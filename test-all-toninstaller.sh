cd test-mytonctrl-installer

sudo docker build -t toninstaller:debian10 -f build-debian:10.Dockerfile  . --no-cache
sudo docker build -t toninstaller:debian11 -f build-debian:11.Dockerfile  . --no-cache
sudo docker build -t toninstaller:ubuntu18.04 -f build-ubuntu:18.04.Dockerfile  . --no-cache
sudo docker build -t toninstaller:ubuntu20.04 -f build-ubuntu:20.04.Dockerfile  . --no-cache
sudo docker build -t toninstaller:ubuntu22.04 -f build-ubuntu:22.04.Dockerfile . --no-cache 
sudo docker build -t toninstaller:centos7.9.2009 -f build-centos:centos7.9.2009.Dockerfile  . --no-cache
sudo docker build -t toninstaller:centos8.4.2105 -f build-centos:centos8.4.2105.Dockerfile  . --no-cache
sudo docker build -t toninstaller:archlinuxbase -f build-archlinux:base.Dockerfile  . --no-cache

# sudo docker build -t toninstaller:ubuntu16.04 -f build-ubuntu:16.04.Dockerfile  . --no-cache
# sudo docker build -t toninstaller:debian8 -f build-debian:8.Dockerfile  . --no-cache
# sudo docker build -t toninstaller:debian9 -f build-debian:9.Dockerfile  . --no-cache



