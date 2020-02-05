FROM ubuntu:18.04
MAINTAINER reeve0930 <reeve0930@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt upgrade -y
RUN apt install -y sudo zsh build-essential language-pack-ja curl software-properties-common \
                silversearcher-ag 

RUN add-apt-repository ppa:git-core/ppa
RUN apt update
RUN apt install -y git

RUN useradd -m -s /bin/bash user && gpasswd -a user sudo
RUN echo 'user:password' | chpasswd

USER user
