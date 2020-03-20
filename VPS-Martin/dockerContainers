#!/bin/bash

ARGS1=('start' 'restart' 'stop' 'delete')

METHOD="99"

if [ "$1" == "-h" ]; then
    echo ""
    echo ""
    echo "To use this bash script use the following syntax: "
    echo ""
    echo "./.dockerContainers.sh <[start, restart, stop, delete]?>"
    echo ""
    echo "examples: "
    echo ""
    echo "> To stop/start/restart all containers running container belonging to WoodyToys: "
    echo " ./.dockerContainers.sh stop"
    echo " ./.dockerContainers.sh start"
    echo " ./.dockerContainers.sh restart"
    echo ""
    echo "> Td delete all created containers and their corresponding images: (belonging to WooodyToys)"
    echo " ./.dockerContainers.sh delete"
    echo ""
    echo ""
    exit
fi


for i in "${!ARGS1[@]}"; do
    if [[ "${ARGS1[$i]}" = "$1" ]]; then
        METHOD="${i}";
    fi
done

if [ "$METHOD" == "99" ]; then
    echo "Usage: $1 <[start, restart, stop, delete]?>"
    exit
fi

if [ "$1" == "start" ]; then
    docker start soa-in
    docker start web-local
    docker ps -a
fi

if [ "$1" == "restart" ]; then
    docker restart soa-in
    docker restart web-local
    docker ps -a
fi

if [ "$1" == "stop" ]; then
    docker stop soa-in
    docker stop web-local
    docker ps -a
fi

if [ "$1" == "delete" ]; then
    docker stop soa-in
    docker stop web-local

    docker rm soa-in
    docker rm web-local

    docker rmi -f vps-martin_soa-in 
    docker rmi -f vps-martin_web-local

    docker network rm vps-martin_local_net
    docker network rm vps-martin_dmz_net
fi