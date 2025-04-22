#!/bin/bash

ruta=$(pwd) # Ruta del script actual

#Emulador de una terminal de Linux
echo "Bienvenido al emulador de terminal"

# Captura Ctrl+C y Ctrl+Z para evitar salida
trap '' SIGINT SIGTSTP 

#Función para iniciar sesión con el usuario del sistema
login(){
    # Solicitar usuario y contraseña
    echo "Por favor, inicia sesión con tu usuario y contraseña del sistema."
    read -p "Usuario: " usuario
    read -s -p "Contraseña: " password
    echo ""
    # Verificar si el usuario y contraseña existen en el sistema con id
    # id devuelve true si el usuario existe
    if id "$usuario" &>/dev/null; then
        # Verificar la contraseña
        if echo "$password" | su -c "true" "$usuario" &>/dev/null; then
            echo "Inicio de sesión exitoso como $usuario"
        else
            echo "Contraseña incorrecta"
            exit 1
        fi
    else
        echo "Usuario no encontrado"
        exit 1
    fi
}

# Función para mostrar la línea de comandos personalizada
mostrar_prompt() {
    directorio_actual=$(pwd)
    #echo -e "\033[1;32m$usuario\033[0m@\033[1;34m$directorio_actual\033[0m$ "
    echo -e "\033[1;32m$usuario\033[0m\033[1;33m@\033[0m\033[1;34m$directorio_actual\033[0m$ "

}

# Función para ejecutar comandos en el emulador de terminal
ejecutar_terminal(){
    #La función se ejecuta en un bucle infinito hasta que el usuario decida salir
    while true; do
        mostrar_prompt
        # Leer el comando ingresado por el usuario
        # Usar 'read -e' para permitir la edición del comando
        read -e comando

        # Bloquear la palabra "exit"
        if [[ "$comando" == "exit" ]]; then
            echo "Usa 'salir' para salir del emulador."
            continue
        fi

        # Comprobar si el comando ingresado corresponde a un archivo .sh en la ruta
        if [ -f "$ruta/$comando.sh" ]; then
            # El comando se ejecuta en un subshell para evitar conflictos con el entorno actual
            bash "$ruta/$comando.sh"
            continue
        fi

        # Salir del emulador si el usuario escribe "salir"
        if [[ "$comando" == "salir" ]]; then
            echo "Saliendo del emulador..."
            echo "Hasta pronto $usuario uwu"
            break
        fi

        # Ejecutar el comando ingresado por el usuario
        # eval es utilizado para evaluar una cadena de texto y ejecutarla
        eval "$comando"
    done
}

#....................................................................

# Ejecutar la función principal
login
ejecutar_terminal