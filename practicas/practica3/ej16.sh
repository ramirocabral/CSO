#!/bin/sh

error(){
    echo "$1"
    exit 1
}

[ $# -eq 1 ] || error "Numero de parametros incorrectos"


for homedir in $(ls /home)
do
    num=$(find "/home/$homedir" -name "*.$1" | wc -l)
    echo "$homedir:$num" >> $HOME/reporte.txt
done
