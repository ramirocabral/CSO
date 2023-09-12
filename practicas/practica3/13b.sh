#!/bin/bash

select opcion in Listar DondeEstoy QuienEsta Salir
do
  case $opcion in
    "Listar")
      echo "`ls`"
;;
"DondeEstoy")
  echo `pwd`
;;
"QuienEsta")
  echo `who`
;;
"Salir")
  break
;;
esac
done
