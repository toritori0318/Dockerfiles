FROM ubuntu:latest

MAINTAINER TSUYOSHI TORII toritori0318

# source list
RUN echo 'deb http://jp.archive.ubuntu.com/ubuntu trusty main restricted' \
 && echo 'deb-src http://jp.archive.ubuntu.com/ubuntu trusty main restricted' \
 && echo 'deb http://jp.archive.ubuntu.com/ubuntu trusty-updates main restricted' \
 && echo 'deb-src http://jp.archive.ubuntu.com/ubuntu trusty-updates main restricted'

# packages
RUN apt-get -q -y update \
 && apt-get -q -y install build-essential vim-tiny curl tar gzip \
 && apt-get -q -y install libdancer2-perl \
 && apt-get -q -y clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ADD . /code
WORKDIR /code

RUN curl -L http://cpanmin.us | perl - Redis

CMD plackup -r bin/app.psgi
