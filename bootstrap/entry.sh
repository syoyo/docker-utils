#!/bin/bash

# place this file to $HOME

# http://www.yegor256.com/2014/08/29/docker-non-root.html

adduser --disabled-password --gecos '' r
adduser syoyo sudo
echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
su -m syoyo
