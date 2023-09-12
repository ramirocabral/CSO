#! /bin/bash
echo "$1 * $2 = `expr $1 \* $2`"
echo "$1 + $2 = `expr $1 + $2`"
echo "$1 - $2 = `expr $1 - $2`"
echo "$1 / $2 = `expr $1 / $2`"

if [ $1 -ge $2 ]; then
  echo "El mayor es $1"
else
  echo "El mayor es $2"
fi
