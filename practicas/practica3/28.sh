#!/bin/bash

if [ $# -eq 0 ]; then
  exit 1
fi

if [ -d $1 ]; then
  lect=0
  esc=0
  for i in $(ls $1); do
    i=$1/$i
    if [ -f $i ]; then
      if [ -r $i ]; then
        lect=$(expr $lect + 1)
      fi
      if [ -w $i ]; then
        esc=$(expr $esc + 1)
      fi
    fi
  done
else
  exit 4
fi

echo $lect $esc
