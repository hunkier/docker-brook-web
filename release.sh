#!/usr/bin/env bash

docker pull ubuntu
docker pull alpine

docker build -t hunkier/brook-web:ubuntu ./ubuntu/ && docker push hunkier/brook-web:ubuntu
docker build -t hunkier/brook-web:alpine ./ubuntu/ && docker push hunkier/brook-web:alpine

docker tag hunkier/brook-web:alpine hunkier/brook-web:latest
docker push hunkier/brook-web:latest
