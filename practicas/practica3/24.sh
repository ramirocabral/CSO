#!/bin/bash

vec1=(1 2 3 4 5)
vec2=(1 2 3 4 5)

for ((i = 0; i < ${#vec1[@]}; i++)); do
  echo La suma de los elementos de la posicion $i de los vectores es $(expr ${vec1[i]} + ${vec2[i]})
done
