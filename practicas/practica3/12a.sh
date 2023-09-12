#! /bin/bash
echo "Ingrese dos numeros"
read n1 n2
echo "$n1 * $n2 = `expr $n1 \* $n2`"
echo "$n1 + $n2 = `expr $n1 + $n2`"
echo "$n1 - $n2 = `expr $n1 - $n2`"
echo "$n1 / $n2 = `expr $n1 / $n2`"

if [ $n1 -ge $n2 ]; then
  echo "El mayor es $n1"
else
  echo "El mayor es $n2"
fi
