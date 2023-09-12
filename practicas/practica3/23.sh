#!/bin/bash

vec=(1 2 3 4 5 6 7)

echo Los numeros pares son:
for ((i = 0; i < ${#vec[@]}; i++)); do
  if [ $(expr ${vec[i]} % 2) -eq 0 ]; then
    echo ${vec[i]} | tr '\n' ' '
  else
    cont=$(expr $cont + 1)
  fi
done

echo
echo La cantidad de impares es: $cont
