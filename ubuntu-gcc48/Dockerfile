FROM ubuntu
MAINTAINER Syoyo Fujita(syoyo@lighttransport.com)

RUN apt-get -y --force-yes install python-software-properties
RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test
RUN apt-get update
RUN apt-get -y install make autoconf automake libtool
RUN apt-get -y install gcc-4.8 g++-4.8 
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50
RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 50
