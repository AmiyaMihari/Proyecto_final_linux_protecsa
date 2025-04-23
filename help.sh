#!/bin/bash
# Check if user has given an argument, if not, ask it
if [ -z $1 ] ; then
    echo ""
    read -p $'\e[35m-> \e[36mIngrese el comando del cual necesitas ayuda: \e[0m'  command
else 
    command=$1
fi
if [ -z $command ] ; then
    echo -e "\e[31m-> ERROR: No se ingresó ningún comando"
else 
    # Check if command was created by us
    case $command in
        "-a" ) # Descripción de todos los comandos
            echo -e "\e[36m ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
█─▄▄▄─█─▄▄─█▄─▀█▀─▄██▀▄─██▄─▀█▄─▄█▄─▄▄▀█─▄▄─█─▄▄▄▄███▄─▄▄▀█▄─▄█─▄▄▄▄█▄─▄▄─█─▄▄─█▄─▀█▄─▄█▄─▄█▄─▄─▀█▄─▄███▄─▄▄─█─▄▄▄▄█
█─███▀█─██─██─█▄█─███─▀─███─█▄▀─███─██─█─██─█▄▄▄▄─████─██─██─██▄▄▄▄─██─▄▄▄█─██─██─█▄▀─███─███─▄─▀██─██▀██─▄█▀█▄▄▄▄─█
▀▄▄▄▄▄▀▄▄▄▄▀▄▄▄▀▄▄▄▀▄▄▀▄▄▀▄▄▄▀▀▄▄▀▄▄▄▄▀▀▄▄▄▄▀▄▄▄▄▄▀▀▀▄▄▄▄▀▀▄▄▄▀▄▄▄▄▄▀▄▄▄▀▀▀▄▄▄▄▀▄▄▄▀▀▄▄▀▄▄▄▀▄▄▄▄▀▀▄▄▄▄▄▀▄▄▄▄▄▀▄▄▄▄▄▀\e[0m"

printf "\n\n"
echo "Comando           Descipcion"
printf "\n\n"
echo "infosis           Devuelve especificaciones del sistema, tales como:"
echo "                  Memoria RAM, Arquitectura del sistema y "
printf "\n\n"
echo "tiempo            Devuelve la hora y fecha local"
printf "\n\n"
echo "buscar            Comando que sirve para buscar un archivo dentro de"
echo "                  un directorio Especifico"
printf "\n\n"
echo "creditos          Muestra los creditos de los programadores"
printf "\n\n"
echo "ahorcado          ¿Necesitas un respiro? ¡JUEGA AHORCADO!"
printf "\n\n"
echo "musica            Escucha Musica en nuestro nuevo reproductor"
printf "\n\n"
echo "neko              ¿Quieres ver algo lindo?"
printf "\n\n"
echo "salir             Salir de la linea de comandos"
            ;;
        "-l" ) # Lista de comandos disponibles
            echo -e "\e[35m --------------------------"
            echo -e " || \e[36mComandos disponibles \e[35m||"
            echo -e " --------------------------\e[0m"
            echo -e "   ahorcado"    
            echo -e "   ayuda"
            echo -e "   buscar"
            echo -e "   creditos"
            echo -e "   infosis"
            echo -e "   musica"
            echo -e "   tiempo"
            echo -e "   salir"
            echo -e "   neko"
            ;;
        "ahorcado" ) # Juego ahorcado
            echo -e "\e[35m ---------------"
            echo -e " || \e[36mAhorcado  \e[35m||"
            echo -e " ---------------"
            echo -e "- \e[36mUso: \e[0m"
            echo -e "   ahorcado \e[0m"
            echo ""
            echo -e "- \e[36mDescripción: \e[0m"
            echo -e "   Se ejecuta el juego del ahorcado: se trata de adivinar una palabra secreta, ingresando letras. Si se adivina la palabra, se gana. Si se adivina la palabra, se pierde."
            ;;
        "ayuda" ) # Comando de ayuda
            echo -e "\e[35m -----------------------"
            echo -e " || \e[36mComando de ayuda  \e[35m||"
            echo -e " -----------------------"
            echo -e "- \e[36mUso: \e[0m"
            echo -e "   ayuda \e[0m"
            echo -e "   ayuda \e[1mcomando_a_consultar\e[0m"
            echo -e "   ayuda \e[1m-l\e[0m (ver lista de comandos disponibles))"
            echo -e "   ayuda \e[1m-a\e[0m (ver descripción todos los comandos disponibles)"
            echo ""
            echo -e "- \e[36mDescripción: \e[0m"
            echo -e "   Muestra la información de un comando creado por nosotros."  
            ;;
        "buscar" ) # Comando de búsqueda
            echo -e "\e[35m --------------------------"
            echo -e " || \e[36mComando de búsqueda  \e[35m||"
            echo -e " --------------------------"
            echo -e "- \e[36mUso: \e[0m"
            echo -e "   buscar"
            echo -e "   buscar \e[1;36mdirectorio_donde_buscar\e[0m"
            echo -e "   buscar \e[1;36mdirectorio_donde_buscar archivo_a_buscar\e[0m"
            echo ""
            echo -e "- \e[36mDescripción: \e[0m"
            echo -e "   Busca un archivo en el sistema de archivos: si lo encuentra muestra un mensaje de éxito, si no lo encuentra muestra que no lo encontró y si el directorio no existe muestra un mensaje de error."
            ;;
        "creditos" ) # Comando para ver créditos de los autores
            echo -e "\e[35m ------------------------------"
            echo -e " || \e[36mCréditos de los autores  \e[35m||"
            echo -e " ------------------------------"
            echo -e "- \e[36mUso: \e[0m"
            echo -e "   creditos \e[0m"
            echo ""
            echo -e "- \e[36mDescripción: \e[0m"
            echo -e "   Muestra los créditos de los autores del proyecto y un personaje de Among Us."
            ;;
        "infosis" ) # Comando para ver información del sistema
            echo -e "\e[35m ------------------------------"
            echo -e " || \e[36mInformación del sistema  \e[35m||"
            echo -e " ------------------------------"
            echo -e "- \e[36mUso: \e[0m"
            echo -e "   infosis \e[0m"
            echo ""
            echo -e "- \e[36mDescripción: \e[0m"
            echo -e "   Muestra información del sistema:
        * Memoria RAM (total, libre y disponible).
        * Arquitectura
        * Sistema operativo y versión del kernel"
            ;;
        "musica" ) # Reproductor de mp3
            echo -e "\e[35m -------------------------"
            echo -e " || \e[36mReproductor de mp3  \e[35m||"
            echo -e " -------------------------"
            echo -e "- \e[36mUso: \e[0m"
            echo -e "   musica \e[0m"
            echo -e "   musica \e[1mdirectorio_con_mp3\e[0m"
            echo ""
            echo -e "- \e[36mDescripción: \e[0m"
            echo -e "   Abre un reproductor de música en el directorio especificado que permite reproducir archivos mp3. Si no se especifica un directorio, se abre en el directorio actual."
            ;;
        
        "tiempo" )  # Ver tiempo actual
            echo -e "\e[35m ---------------------------------"
            echo -e " || \e[36mComando para ver el tiempo  \e[35m||"
            echo -e " ---------------------------------"
            echo -e "- \e[36mUso: \e[0m"
            echo -e "   tiempo \e[0m"
            echo ""
            echo -e "- \e[36mDescripción: \e[0m"
            echo -e "   Muestra la hora y fecha actual."
            ;;
        "salir") #salir de la linea de 
            echo -e "\e[35m ---------------------------------"
            echo -e " || \e[36m Comando para finalizar la ejecucion \e[35m||"
            echo -e " ---------------------------------"
            echo -e "- \e[36mUso: \e[0m"
            echo -e "   finalizar ejecucion del programa \e[0m"
            echo ""
            echo -e "- \e[36mDescripción: \e[0m"
            echo -e "   Es el comando unico para poder finalizar la ejecucion del programa y salir a la terminal nativa del sistema."
            ;;
        "neko") #imprimer un neko
            echo -e "\e[35m ---------------------------------"
            echo -e " || \e[36m Comando para ver un lindo neko\e[35m||"
            echo -e " ---------------------------------"
            echo -e "- \e[36mUso: \e[0m"
            echo -e "   ver un lindo gato, (se recomienda reducir el tamano de las letras) \e[0m"
            echo ""
            echo -e "- \e[36mDescripción: \e[0m"
            echo -e "   ¿La tarea o el trabajo te tienen estresado?  ¡Ve un lindo gato y olvida tus problemas!"
            ;;
        * ) # Cualquier otro input
            echo ""
            echo -e "\e[35m-> \e[31mLa información de este comando no está disponible con "ayuda""
            echo -e "\e[35m-> \e[36mPara ver la lista de comandos disponible, ejecute \e[1;36mayuda -l\e[0m"
            ;;
    esac
    echo ""
fi
