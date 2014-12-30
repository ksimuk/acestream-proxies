FROM ubuntu:14.04

MAINTAINER Maksim Kraev <maxim.kraev@gmail.com>

ADD sources.list /etc/apt/sources.list

RUN apt-get update -y

#RUN echo 'deb http://repo.acestream.org/ubuntu/ trusty main' > /etc/apt/sources.list.d/acestream.list
#RUN wget -q -O - http://repo.acestream.org/keys/acestream.public.key | apt-key add -
#RUN DEBIAN_FRONTEND=noninteractive apt-get update -y

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y unzip ca-certificates vlc-nox python-gevent mono-complete python-pkg-resources net-tools python-apsw python-m2crypto

RUN adduser --disabled-password --gecos "" tv

ADD P2pProxy /home/tv/P2pProxy
ADD TTVProxy /home/tv/TTVProxy
ADD acestream /usr/share/acestream

RUN chown tv -R /home/tv/
RUN ln -s /usr/share/acestream/acestreamengine /usr/bin/

USER tv