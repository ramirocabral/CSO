#!/bin/sh

existeMunicipio(){
    for ((i=0;i<${#MUNICIPIOS[*]};i++))
    do
        # si se entontro
        [ ${MUNICIPIOS[$i]} != $1 ] || return 1
    done
    return 0
}

#retorna 0 si no se agrego, 1 si se agrego correctamente
agregarMunicipio(){
    [ $# -eq 1 ] || return 0
    existeMunicipio "$1"
    [ $? -eq 0 ] || return 0
    MUNICIPIOS[${#MUNICIPIOS[*]}]=$1
    return 1
}

listaMunicipios(){
    for elem in ${MUNICIPIOS[*]}
    do
        echo "$elem"
    done
}

cantidadMunicipios(){
    echo "${#MUNICIPIOS[*]}"
}

municipioConMasPoblacion(){
    poblacionMayor=0
    while read -r linea
    do
        poblacion=$(echo $linea | cut -d" " -f3 | tr -d "A-Z")
        [ $poblacion -gt $poblacionMayor ] && poblacionMayor=$poblacion
    done < /home/ramiro/municipios.txt
    echo $poblacionMayor
}


MUNICIPIOS=($(cat /home/ramiro/municipios.txt | cut -d" " -f1 ))

echo "${MUNICIPIOS[*]}"
# existeMunicipio "LaPlata"
# echo $?
agregarMunicipio "Lanus"
listaMunicipios
municipioConMasPoblacion
