#!/bin/bash

docker stop soa-ext

docker rm soa-ext


docker rmi -f vps-olivier_soa-ext


docker network rm vps-olivier_local_net
docker network rm vps-olivier_dmz_net