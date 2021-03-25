#!/bin/bash

yum install docker
docker pull flashspys/nginx-static
systemctl start docker
gdzie=$(pwd)
docker run -v $gdzie/default.conf:/etc/nginx/conf.d/default.conf -p 80:80 flashspys/nginx-static
