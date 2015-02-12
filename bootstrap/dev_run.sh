#!/bin/sh

docker run -i -t --rm -v "$HOME/work:/work" ubuntu /work/entry.sh
