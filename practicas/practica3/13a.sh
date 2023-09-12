#!/bin/bash

i=0
while [ $i -ne 101 ]; do
  echo "$i | $(expr $i \* $i)"
  let i++
done

for ((i = 0; i < 101; i++)); do
  echo "$i | $(expr $i \* $i)"
done
