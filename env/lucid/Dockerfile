 
FROM ubuntu:lucid

LABEL maintainer="reinhard.doerner@krauth-online.de"

LABEL version="1.0"

# ARG HOMEDIR

RUN sed -i -re 's/([a-z]{2}\.)?archive.ubuntu.com|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list

RUN apt-get update --fix-missing
#
# we do not do an update 
# because this stops with an dpkg error when upgrading udev or plymouth
#
#RUN apt-get -y --force-yes upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils ca-certificates curl
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y locales \
        multipath-tools \
        git-core build-essential subversion help2man diffstat \
        texi2html texinfo cvs gawk qemu unzip wget curl python \
        chrpath xz-utils debianutils iputils-ping \
        subversion nano g++ sudo cpio \
        libncurses5 screen

RUN echo "en_US.UTF-8 UTF-8" >/etc/locale.gen

RUN locale-gen en_US.UTF-8

RUN update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

RUN echo "mostly done"
RUN ln -sf /bin/bash /bin/sh

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
# ENV HOME $HOMEDIR
