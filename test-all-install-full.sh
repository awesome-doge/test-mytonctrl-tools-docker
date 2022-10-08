cd test-all-install-full

sudo docker build -t test-all-install-full:debian10 -f build-debian:10.Dockerfile  . --no-cache
sudo docker build -t test-all-install-full:debian11 -f build-debian:11.Dockerfile  . --no-cache
sudo docker build -t test-all-install-full:ubuntu18.04 -f build-ubuntu:18.04.Dockerfile  . --no-cache
sudo docker build -t test-all-install-full:ubuntu20.04 -f build-ubuntu:20.04.Dockerfile  . --no-cache
sudo docker build -t test-all-install-full:ubuntu22.04 -f build-ubuntu:22.04.Dockerfile . --no-cache 
sudo docker build -t test-all-install-full:centos7.9.2009 -f build-centos:centos7.9.2009.Dockerfile  . --no-cache
sudo docker build -t test-all-install-full:archlinuxbase -f build-archlinux:base.Dockerfile  . --no-cache

# sudo docker build -t test-all-install-full:ubuntu16.04 -f build-ubuntu:16.04.Dockerfile  . --no-cache
# sudo docker build -t test-all-install-full:debian8 -f build-debian:8.Dockerfile  . --no-cache
# sudo docker build -t test-all-install-full:debian9 -f build-debian:9.Dockerfile  . --no-cache