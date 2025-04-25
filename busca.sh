#!/bin/bash

echo "¿Cuál es la carpeta donde quieres buscar?"
echo "Si solo presionas enter buscara en la actual, en caso contrario ingresa una ruta"
read -e -p "> " carpeta

echo "¿Cuál es el nombre del archivo que estas buscando?"
echo "Puede que no recuerdes el nombre completo, con un poco bastará"
read -e -p "> " archivo

#Si la carpeta se ingreso con enter, significa que buscaremos en el directorio actual
if [ -z "$carpeta" ]; then
    carpeta="."
fi

#Para directorios no reconocidos mandamos un mensaje de error
if [ ! -d "$carpeta" ]; then
    echo "La carpeta no existe"
    exit 1
fi 

echo "Buscando..... "
#$carpeta/$archivo
find "$carpeta" -type f -iname "*$archivo*"

#Busca con find archivos y directorios, en ruta $carpeta, seleccionamos solo archivos con -type f
#Usamos -iname para buscar el nombre sin importar mayusculas y minusculas, y el uso de asteriscos para ampliar la busqueda "*$archivo*"
