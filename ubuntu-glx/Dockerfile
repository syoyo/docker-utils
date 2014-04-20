FROM ubuntu
MAINTAINER Syoyo Fujita(syoyo@lighttransport.com)

RUN apt-get update
RUN apt-get -y --force-yes install x-window-system
RUN apt-get install -y binutils
RUN apt-get install -y pkg-config
RUN apt-get install -y x11vnc
RUN apt-get install -y mesa-utils
RUN apt-get install -y libgtk2.0-0
RUN apt-get install -y twm

ADD NVIDIA-DRIVER.run /tmp/NVIDIA-DRIVER.run
RUN sh /tmp/NVIDIA-DRIVER.run -a -N --ui=none --no-kernel-module
RUN nvidia-xconfig -a --use-display-device=None --enable-all-gpus --virtual=1280x1024
RUN rm /tmp/NVIDIA-DRIVER.run
