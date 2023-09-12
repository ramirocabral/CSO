#!/bin/sh

[ -d "$HOME/bin" ] || mkdir "$HOME/bin"

lista=$(find ./ -maxdepth 1 -type f -executable )
cant=0

for elem in $lista
do
    echo "$elem"
    mv $elem "$HOME/bin"
    let cant++
done

echo "elementos movidos: $cant"
