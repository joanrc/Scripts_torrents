#!/bin/bash
usage() {
         echo "------------------------------------------------------------------------------"
         echo " Buscar archivos de Series y copiar a su carpeta"
         echo " $1 - Ruta de buqueda (por defecto 1 = /internet/torrent)"
         echo " $2 - Cadena a buscar "
         echo " $3 - Ruta a copiar "
         echo " $4 - Valor=0 : Solo buscar ; Valor=1 : Buscar y mover"
         echo "------------------------------------------------------------------------------"
        }

    # ---------------------------------- #
    # Iniciamos la ejecucion del proceso #
    # ---------------------------------- #
    if [ -z $1 ] || [ -z $2 ]
    then
        usage
        exit 0
    fi

    if [ $1 = 1 ] 
    then
        ruta_busqueda=/INTERNET/torrent/
    else
        ruta_busqueda=$1
    fi

    if [ $4 = 1 ] 
    then
       find $ruta_busqueda -name $2* -type f -exec mv {} $3 \;
    else
       find $ruta_busqueda -name $2* -type f
    fi



