#!/bin/sh

error(){
    echo "$2"
    exit "$1"
}

[ $# -eq 1 ] || error 1 "cantidad de parametros incorrecta"

[ -d "$1" ] || error 4 "no es un directorio"

echo "$(find $1 -maxdepth 1 -executable -writable -type f | wc -l)"
