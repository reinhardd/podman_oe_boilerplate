 
FROM ubuntu:xenial

LABEL maintainer="reinhard.doerner@krauth-online.de"

LABEL version="1.0"

ARG HOMEDIR

RUN apt-get update --fix-missing
RUN apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils ca-certificates curl
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y locales \
        multipath-tools \
        git-core build-essential subversion help2man diffstat \
        texi2html texinfo cvs gawk qemu unzip wget curl python \
        chrpath xz-utils debianutils iputils-ping \
        python3 python3-pip python3-pexpect \
        subversion nano g++-multilib sudo cpio \
        libncurses5 screen

RUN echo "en_US.UTF-8 UTF-8" >/etc/locale.gen

RUN locale-gen en_US.UTF-8

RUN update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV HOME $HOMEDIR
