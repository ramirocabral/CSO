#! /bin/bash

if [ $# -ne 3 ]; then
  echo "3 parameters are expected"
  exit 1
fi

case $2 in
"+" | "-" | "/")
  echo "$1 $2 $3 = `expr $1 $2 $3`"
;;
"x")
  echo "$1 $2 $3 = `expr $1 \* $3`"
;;
esac
