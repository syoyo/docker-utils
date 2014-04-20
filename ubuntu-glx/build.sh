#!/bin/sh

# Set nvidia driver file in absolute path.
NVIDIA_DRIVER=$HOME/Downloads/NVIDIA-Linux-x86_64-331.67.run

if [ ! -f "NVIDIA-DRIVER.run" ]; then
    cp ${NVIDIA_DRIVER} NVIDIA-DRIVER.run
fi

sudo docker build -t lighttransport/ubuntu-nv-glx .

rm -rf ${TMP_DIR}
