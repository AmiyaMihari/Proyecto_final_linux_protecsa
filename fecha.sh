#!/bin/bash

#Todos los sistemas unix empiezan desde el 1 de enero de 1970
# y el tiempo se mide en segundos desde esa fecha (conocida como epoch)

#La opción '%(%s)T' indica que se desea el tiempo en segundos desde epoch
epoch=$(printf '%(%s)T\n' -1)  # Obtener el número de segundos desde el 1 de enero de 1970 hasta el actual (-1)
fecha=$(printf '%(%Y-%m-%d)T\n' "$epoch")  #Convertimos segundos a un formato de fecha legible
hora=$(printf '%(%H:%M:%S)T\n' "$epoch") # Convertimos segundos a un formato de hora legible

echo "La fecha es $fecha" 
echo "La hora es $hora" 