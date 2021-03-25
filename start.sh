#!/bin/bash

yum -y install docker
systemctl start docker
docker pull flashspys/nginx-static
gdzie=$(pwd)
docker run -v $gdzie/default.conf:/etc/nginx/conf.d/default.conf -p 80:80 flashspys/nginx-static
