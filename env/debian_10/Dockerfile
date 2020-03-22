 
FROM debian:10

LABEL version="1.1"
#
# 1.1 fixes Home dir

ARG HOMEDIR


RUN apt-get update && apt-get -y install gawk wget git-core \
    diffstat unzip texinfo gcc-multilib build-essential \
    chrpath socat cpio python python3 python3-pip \
    python3-pexpect xz-utils debianutils iputils-ping \
    libsdl1.2-dev xterm tar locales


RUN echo "en_US.UTF-8 UTF-8" >/etc/locale.gen

RUN locale-gen

RUN update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV HOME $HOMEDIR
