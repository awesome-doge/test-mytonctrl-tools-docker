sudo docker buildx build --platform=linux/arm64 --progress=plain --load . -t toninstaller:debian10 -f build-debian:10.Dockerfile
sudo docker buildx build --platform=linux/arm64 --progress=plain --load . -t toninstaller:debian11 -f build-debian:11.Dockerfile
sudo docker buildx build --platform=linux/arm64 --progress=plain --load . -t toninstaller:ubuntu18.04 -f build-ubuntu:18.04.Dockerfile
sudo docker buildx build --platform=linux/arm64 --progress=plain --load . -t toninstaller:ubuntu20.04 -f build-ubuntu:20.04.Dockerfile
sudo docker buildx build --platform=linux/arm64 --progress=plain --load . -t toninstaller:ubuntu22.04 -f build-ubuntu:22.04.Dockerfile
sudo docker buildx build --platform=linux/arm64 --progress=plain --load . -t toninstaller:centos7.9.2009 -f build-centos:centos7.9.2009.Dockerfile
sudo docker buildx build --platform=linux/arm64 --progress=plain --load . -t toninstaller:archlinuxbase -f build-archlinux:base.Dockerfile

