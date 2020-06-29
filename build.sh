#!/bin/bash

sudo docker build . -t folken/xcsoar-data-osm
sudo docker run --mount type=bind,source=/home/folken/data/,target=/data -it folken/xcsoar-data-osm /bin/bash 
