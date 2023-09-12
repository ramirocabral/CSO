#!/bin/bash

echo "MENU DE COMANDOS"

select opt in $(ls | grep .sh) Limpiar Salir; do
  if [ -f $opt ]; then
    ./$opt
  fi
  if [ $opt == Salir ]; then
    break
  fi
  if [ $opt == Limpiar ]; then
    clear
  fi
done
