# Dockerfile for LLVM 3.5 and PoCL 0.10

# Start from an Ubuntu image.
FROM ubuntu:14.04
MAINTAINER Syoyo Fujita <syoyo@lighttransport.com>

RUN  apt-get update

# python2.7 is available after update on ubuntu 14.04.
RUN  apt-get install -y python

# Configuration options.
ENV LLVM_SRC /usr/local/llvm
ENV POCL /usr/local/pocl
ENV LLVM_BUILD /usr/local/llvm-build

# 1. Download Clang, LLVM and PoCL source files.
# 2. Install dependencies for Clang, LLVM and PoCL.
RUN apt-get install -y git $CC $CXX man make \
    libgmp3-dev autoconf libtool pkg-config libhwloc-dev \
    build-essential freeglut3-dev libglew-dev; \
  git clone -b release_35 http://llvm.org/git/llvm.git $LLVM_SRC; \
  git clone -b release_35 http://llvm.org/git/clang.git $LLVM_SRC/tools/clang; \
  mkdir $LLVM_BUILD; \
  cd $LLVM_BUILD; \
  $LLVM_SRC/configure \
    --disable-assertions \
    --disable-bindings \
    --disable-docs \
    --enable-optimized \
    --enable-targets=host-only \
    --enable-shared; \
  make -j$(grep processor /proc/cpuinfo | wc -l) REQUIRES_RTTI=1; \
  make install

# Install PoCL
RUN git clone -b release_0_10 https://github.com/pocl/pocl.git $POCL; \
  cd $POCL; \
  ./autogen.sh; \
  ./configure --disable-icd; \
  make -j$(grep processor /proc/cpuinfo | wc -l); \
  make install
