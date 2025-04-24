#!/bin/bash

# Este script muestra información del sistema como la memoria, arquitectura y sistema operativo

# Obtenemr la información de la memoria ram
get_memory() {
    # Leer el archivo /proc/meminfo para obtener información de la memoria
    # AWK es una herramienta de procesamiento de texto que permite manipular y analizar datos
    # grep busca la línea que contiene MemTotal y MemFree
    # awk '{print $2}' extrae el segundo campo de la línea que contiene MemTotal y MemFree
    total=$(grep MemTotal /proc/meminfo | awk '{print $2}')
    free=$(grep MemFree /proc/meminfo | awk '{print $2}')
    usada=$((total - free))
    # Dividir por 1024 para convertir de kB a MB
    echo "Total: $((total / 1024)) MB"
    echo "Usada: $((usada / 1024)) MB"
    echo "Libre: $((free / 1024)) MB"
}

# Obtener la arquitectura del sistema
get_architecture() {
    # Busca si aparece "lm" (long mode) en las banderas (indicativo de 64 bits)
    # grep busca la línea que contiene lm en /proc/cpuinfo
    # Si se encuentra "lm", el sistema es de 64 bits, de lo contrario es de 32 bits
    if grep -q "lm" /proc/cpuinfo; then
        echo "Arquitectura: 64 bits"
    else
        echo "Arquitectura: 32 bits"
    fi
}

# Obtener información del sistema operativo
get_os() {
    #/etc/os-release es un fichero que contiene info sobre la distro del SO
    . /etc/os-release
    # NAME es el nombre de la distribución (declarada dentro del fichero)
    # VERSION es la versión de la distribución (declarada dentro del fichero)
    echo "Sistema Operativo: $NAME"
    echo "Versión: $VERSION"
}

# Llamar a las funciones
echo "=== Información del Sistema ==="
get_memory
get_architecture
get_os