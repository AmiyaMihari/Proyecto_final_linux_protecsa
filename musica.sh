#!/bin/bash

# Verifica si mpg123 está instalado
if ! which mpg123 >/dev/null; then
    echo -e "No tienes instalado el paquete mpg123, necesitas instalarlo para comenzar a escuchar música"
    read -p "¿Deseas instalarlo? (y/n): " input
    if [[ "$input" == "y" ]]; then
        sudo apt-get update && sudo apt-get install -y mpg123
    else
        exit
    fi
fi

# Pide al usuario la ruta donde tiene guardada su música
read -p "Ingresa la ruta donde tienes guardada tu música: " ruta
if [[ ! -d "$ruta" ]]; then
    echo "La ruta no existe"
    exit 1
fi

# Función para mostrar lista de canciones
mostrar_lista_canciones() {
    archivos=("$ruta"/*.mp3)
    opciones=()
    for archivo in "${archivos[@]}"; do
        nombre=$(basename "$archivo")
        opciones+=("$archivo" "$nombre")
    done

    cancion=$(whiptail --title "Tu Biblioteca Musical" --menu "Elige una canción para reproducir:" 20 78 10 "${opciones[@]}" 3>&1 1>&2 2>&3)

    echo "$cancion"
}

# Función para reproducir canción
reproducir_cancion() {
    cancion="$1"
    clear
    echo "Reproduciendo: $(basename "$cancion")"
    mpg123 "$cancion"
}

# COmienza la navegación
while true; do
    cancion=$(mostrar_lista_canciones)
    if [[ -z "$cancion" ]]; then
        break
    fi

    reproducir_cancion "$cancion"

    if ! whiptail --yesno "¿Quieres reproducir otra canción?" 10 60; then
        break
    fi
done

clear
echo "Gracias por usar nuestro reproductor musical 🎶"
