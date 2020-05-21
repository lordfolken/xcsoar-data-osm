#!/bin/bash

sudo docker build . -t osm
sudo docker run --mount type=bind,source=/home/folken/data/,target=/data -it osm /bin/bash 
