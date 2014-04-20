Hardware accerated OpenGL in docker container
=============================================

This docker container enables running HW accelerated OpenGL application in docker container.

Screenshot
----------

![Screenshot](https://github.com/syoyo/docker-utils/blob/master/ubuntu-glx/img/docker-opengl-glx.png?raw=true)

How it works
------------

* OpenGL driver(Currently NVIDIA proprietary driver) is installed on host OS(Tested on ubuntu 14.04).
* Setup headless X11(--use-display-device=None) in docker container(tested on ubuntu base container)
* Run X11 in headless mode in docker container.
* Run X11vnc to send screen to the client through VNC.


Setup
-----

Install NVIDIA driver property on host OS. 

Build
-----

Edit driver version in `build.sh`, then build docker image by

    $ build.sh

Run
---

    $ run.sh
    # startx &
    # x11vnc    # Setting VNC password preferred.

Run vnc viewer on port 5900 of host OS.

Example
-------

Run `twm` window manager then `glxinfo` and `glxgears` is your friend to check whether OpenGL app is HW accelerated or not.

Run `nvidia-xconfig` to disable Vsync, otherwise `glxgears` is only running up to 60fps(bound to host PC's display refresh rate)

TODO
----

* share GPU on multiple docker container(could achieve by sharing X11 process?)
* don't use `--privilege` flag to run docker container.
* Secury and user account control.

