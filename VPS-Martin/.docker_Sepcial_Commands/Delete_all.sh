#!/bin/bash

docker stop soa-in
docker stop web-local

docker rm soa-in
docker rm web-local

docker rmi -f vps-martin_soa-in 
docker rmi -f vps-martin_web-local

docker network rm vps-martin_local_net
docker network rm vps-martin_dmz_net