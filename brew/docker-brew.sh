#!/bin/bash

docker pull linuxbrew/brew
docker run -it --name=brew --entrypoint bash linuxbrew/brew
docker ps # Para pillar el id del contendor que está corriendo
docker cp brew:/home/linuxbrew $HOME/.local/share
docker kill brew
docker rm brew
# To run an interactive shell with brew installed:
# docker run -it --network host --name brew -v $HOME/.local/share/linuxbrew:/home/linuxbrew --entrypoint bash linuxbrew/brew
