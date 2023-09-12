#!/bin/bash

if [ $# -eq 0 ]; then
  echo Es necesario ingresar por lo menos un parametro
  exit 1
fi

arch=0

for ((i = 1; i <= $#; i++)); do
  param="${!i}"

  if [ -e $param ]; then
    if [ -f $param ]; then
      echo $param es un archivo.
    else
      echo $param es un directorio.
    fi
  else
    arch=$(expr $arch + 1)
  fi
done

if [ $arch -ne 0 ]; then
  echo La cantidad de archivos inexistentes son: $arch
fi
