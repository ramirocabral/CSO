#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Ingrese un usuario."
  exit 1
fi

while true; do

  who | grep -q "$1"

  if [ $? -eq 0 ]; then
    echo "Se ha logueado $1."
    break
  fi

  sleep 10
done
