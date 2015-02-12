#!/bin/sh

docker run -i -t --rm -v "$HOME/work:/home/syoyo/work" syoyo/ubuntu1404-dev /home/syoyo/work/entry.sh
