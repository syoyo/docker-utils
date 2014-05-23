# Docker + GPU

##Goal

Provide virtualized(containerized) GPU(X11 + HW accelerated OpenGL) environment per user login(like GPU as a service).

## Methods

Here's list of method(s) confirmed so far.

* Host OS : Ubuntu + NV proprietary driver 
* Container : ubuntu(14.04 better?)

### X11 socket share

Bind host's /tmp/.X11-unix to container to access GLX.

It seems user name in the container should be same with Host OS's account. At least root account(in the container) failed to run X11 application.

```
$ docker run -e DISPLAY=unix:$DISPLAY -v=/tmp/.X11-unix:/tmp/.X11-unix:rw -i -t  lighttransport/ubuntu-nv-glx /bin/bash
# useradd syoyo
# su syoyo
$ glxgears # or some GLX application
```


## TODO

* Check if GPU sharing works well for multi-user login(multi container with different user accounts)
* Security of X11-socket share
* Run X11 server in ``headless`` mode for prevent displaying user's content to a display(e.g. LCD panel).

