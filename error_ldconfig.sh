#!/bin/bash

green="\e[0;32m\033[1m"
end="\033[0m\e[0m"
red="\e[0;31m\033[1m"
blue="\e[0;34m\033[1m"
yellow="\e[0;33m\033[1m"

USUARIO=$1

if [ $(id -u) -eq 0 ]; then
    export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin
    echo -n "PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin" >> /home/$USUARIO/.bashrc
    echo -e "${blue}[i]${end} EL SISTEMA SE REINICIARA PARA REALIZAR CAMBIOS ... "
    sleep 3
    reboot -i
else
    echo -e "${red}[!]${end} EJECUTE EL SCRIPT COMO ROOT"
    exit 0
fi
