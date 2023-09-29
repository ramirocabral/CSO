#!/bin/sh

error(){
    echo "$1"
    exit 1
}

[ $# -gt 1 ] || error "numero de parametros incorrecto"


archivo="/var/log/access.$1.log"

[ -f $archivo ] || error "el archivo de log para la fecha no existe"

ips=($*)

#arranco en 1 para ignorar la fecha
for ((i=1;i<${#ips[*]}; i++))
do
    num=$(grep "^${ips[$i]}" $archivo | wc -l)
    echo "${ips[$i]} : $num"
done
