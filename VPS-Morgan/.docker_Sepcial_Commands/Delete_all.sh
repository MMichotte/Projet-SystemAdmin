#!/bin/bash

docker stop resolver
docker stop mysql-db
docker stop web-dmz

docker rm resolver
docker rm mysql-db
docker rm web-dmz

docker rmi -f vps-morgan_resolver
docker rmi -f vps-morgan_mysql-db
docker rmi -f vps-morgan_web-dmz

docker network rm vps-morgan_local_net
docker network rm vps-morgan_dmz_net