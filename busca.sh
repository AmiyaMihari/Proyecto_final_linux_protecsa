#!/bin/bash

echo "¿Cuál es el nombre de la carpeta donde quieres buscar?"
read -e -p "> " carpeta

echo "¿Cuál es el nombre del archivo que estas buscando?"
read -e -p "> " archivo


if [ ! -d "$carpeta" ]; then
    echo "La carpeta no existe"
    exit 1
fi

echo "Buscando..... "
#$carpeta/$archivo
find "$carpeta" -type f -iname "*$archivo*"

#Busca con find archivos y directorios, en ruta $carpeta, seleccionamos solo archivos con -type f
#Usamos -iname para buscar el nombre sin importar mayusculas y minusculas, y el uso de asteriscos para ampliar la busqueda "*$archivo*"
