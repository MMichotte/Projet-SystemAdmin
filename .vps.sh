#!/bin/bash

ARGS1=('ssh' 'scp')
ARGS2=('martin' 'morgan' 'olivier')

SRC=( 'VPS-Martin' 'VPS-Morgan' 'VPS-Olivier') 
DST=('vps-martin@51.178.40.108' 'vps-morgan@51.178.41.120' 'vps-olivier@51.178.40.194') 

METHOD="99"
TARGET="99"

for i in "${!ARGS1[@]}"; do
    if [[ "${ARGS1[$i]}" = "$1" ]]; then
        METHOD="${i}";
    fi
done

for i in "${!ARGS2[@]}"; do
    if [[ "${ARGS2[$i]}" = "$2" ]]; then
        TARGET="${i}";
    fi
done

if [ "$METHOD" == "99" ] || [ "$TARGET" == "99" ]; then
    echo "Usage: $1 <[ssh,scp]?> $2 <name of vps owner (lowercase)>"
    exit
fi

if [ "$1" == "ssh" ]; 
then
    ssh ${DST[$TARGET]}
else
    transfer_files(){
    scp -r "./${SRC[$TARGET]}" "${DST[$TARGET]}:woodyToys_services/"
    echo "--------------------"
    echo "scp transfer completed!"
    }

    while true; do
        echo "--------------------"
        echo "WARNING SCP TRANSFER"
        echo "--------------------"
        read -p "Are you sure you want to copy all files from your local directory '${SRC[$TARGET]}' to the following VPS server : ${DST[$TARGET]} ? [y/n]? " yn 
        case $yn in
            [Yy]* ) transfer_files ; break;;
            [Nn]* ) exit;;
            * ) echo "Please answer yes or no.";;
        esac
    done
fi