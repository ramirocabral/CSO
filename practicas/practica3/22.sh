#!/bin/bash

num=(10 3 5 7 9 3 5 4)

# Funcion que recibe una arreglo y un numero y multiplica cada elemento
# $1 = numero
productoria() {
  for i in "${num[@]}"; do
    echo "scale=1;$i*$1" | bc
  done
}

productoria 2
