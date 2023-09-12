#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Proporcione el nombre de un archivo o directorio"
  exit 1
fi

file="$1"

if [ -e $file ]; then
  if [ -f $file ]; then
    echo "Es un archivo"
  else
    echo "Es un directorio"
  fi
else
  if [ touch $file ]; then
    echo "El archivo $file fue creado con exito."
  else
    echo "Hubo un error al crear el archivo"
  fi
fi
