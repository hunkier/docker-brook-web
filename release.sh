#!/usr/bin/env bash

docker pull ubuntu
docker pull alpine
docker pull centos

docker build -t hunkier/brook-web:ubuntu ./ubuntu/ && docker push hunkier/brook-web:ubuntu
docker build -t hunkier/brook-web:alpine ./alpine/ && docker push hunkier/brook-web:alpine
docker build -t hunkier/brook-web:centos ./centos/ && docker push hunkier/brook-web:centos

docker tag hunkier/brook-web:alpine hunkier/brook-web:latest
docker push hunkier/brook-web:latest
