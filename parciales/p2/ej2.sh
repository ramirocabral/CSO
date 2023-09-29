#!/bin/sh

error (){
    echo "$1"
    exit 1
}

[ $# -gt 1 ] || error "numero de parametros incorrecto"

[ -d $1 ] || error "$1 no es un directorio"

nombres=($*)
for ((i=1;i<${#nombres[*]};i++))
do
    ([[ -f "$1/${nombres[$i]}" ]] && [[ -x "$1/${nombres[$i]}" ]]) && echo "Se posee permiso de ejecucion sobre ${nombres[$i]}"
    ([[ -d "$1/${nombres[$i]}" ]] && [[ -w "$1/${nombres[$i]}" ]]) && echo "Se posee permiso de escritura sobre /${nombres[$i]}"
done
