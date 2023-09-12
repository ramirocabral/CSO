#!/bin/bash

if [ $# -ne 3 ]; then
  echo "El numero de parametros es incorrecto"
fi

dir=$2
cadena=$3

case $1 in
  "-a")
    for var in $(ls $dir); do
      c=$var$cadena
      mv $dir$var $dir$c
    done
    ;;
  "-b")
    for var in $(ls $dir); do
      c=$cadena$var
      mv $dir$var $dir$c
    done
    ;;
esac
