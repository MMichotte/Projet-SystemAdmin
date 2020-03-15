#!/bin/bash

SRC='VPS-Olivier'
DST='vps-olivier@51.178.40.194'

transfer_files(){
    scp -r "./$SRC" "$DST:woodyToys_services/"
    echo "--------------------"
    echo "scp transfer completed!"
}

while true; do
    echo "--------------------"
    echo "WARNING SCP TRANSFER"
    echo "--------------------"
    read -p "Are you sure you want to copy all files from your local directory '$SRC' to the following VPS server : $DST ? [y/n]? " yn 
    case $yn in
        [Yy]* ) transfer_files ; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done