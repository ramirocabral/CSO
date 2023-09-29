#!/bin/sh

error (){
    echo "$1"
    exit 1
}

listar(){
    for ((i=0; i<${#arr[*]};i++))
    do
        echo "${arr[i]}"
    done
}

eliminar(){
    unset arr[$1}
}

contar(){
    echo "${#arr[*]}"
}

[ $# -eq 1 ] || echo "numero de parametros incorrecto"

arr=($(cat /etc/passwd | cut -d: -f1 | grep "$1"))


select opcion in listar eliminar contar
do
    case $opcion in 
        "listar")
       listar
       ;;
    "eliminar")
       for ((j=0;j<${#arr[*]};j++))
       do
           echo "$j ${arr[$j]}"
       done
           echo "Ingrese el indice que desea eliminar:"
           read indice
           ([ $indice -ge 0 ] & [ $indice -lt ${#arr[*]} ]) || error "indice incorrecto"
           echo "$indice"
           eliminar "$indice"
       ;;
       "contar")
        contar
        ;;
    esac
done
