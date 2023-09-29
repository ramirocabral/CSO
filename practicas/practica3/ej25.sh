#!/bin/sh

error(){
    echo "$1"
    exit 1
}

arr=($(grep '^wheel:' /etc/group | cut -d: -f4 | sed 's/,/ /'))

[ $# -gt 0 ] & [ $# -le 2 ] || error "numero de parametros incorrecto"

case $1 in 
"-b")
[ $# -eq 2 ] & ([ $2 -ge 0 ] & [ $2 -le ${#arr[*]} ]) || error "valor incorrecto de n"
echo "nashe"
;;
esac
