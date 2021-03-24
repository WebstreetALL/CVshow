#!/bin/bash

#yum install docker
#docker pull flashspys/nginx-static
gdzie=$(pwd)
docker run -v $gdzie/default.conf:/etc/nginx/conf.d/default.conf -p 8080:80 flashspys/nginx-static
