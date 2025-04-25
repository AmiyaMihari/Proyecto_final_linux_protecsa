#!/bin/bash


#trap es un comando de bash para capturar señales y asignar una acción personalizada
#'' indica una acción vacía, SIGINT es la señal Ctrl+C, SIGTSTP es la señal Ctral+Z
trap '' SIGINT SIGTSTP

echo -e "\033[5;1;35m \n Bienvenido. \n Esta terminal cuenta con 8 comandos especiales para realizar divertidas actividades \033[0m"

#Todo el script funcionara con un bucle que solo el comando "salir" detiene
#Desplegamos un menú de comandos especiales disponibles 
#La bandera -e en un echo sirve para interpretar saltos de línea \n, barras invertidas \\, etc. Previene errores de sintaxis

while true; do
    echo -e ""
    echo -e "\033[35m          ====================  MENÚ PRINCIPAL ====================\033[0m"
    echo -e "            Escribe el comando del cual requieras mas información"
    echo -e "     \033[43m  ayuda | infosis | fecha | busca | creditos | jugar | musica | salir \033[0m"
    read -p "     Dame info de > " comando
    echo -e ""

    case $comando in 

        "ayuda")
            echo -e "\033[33m\"ayuda\" \033[32m es el primer comando. Aqui te explicamos que comandos especiales tenemos disponibles y para que puedes usarlos\033[0m"
            echo -e "\033[32mVuelve siempre que necesites ayuda con nuestros comandos especiales\033[0m"
            ;;

        "infosis")
            echo -e "\033[33m\"infosis\" \033[32m Te mostraremos la información del sistema\033[0m"
            echo -e "\033[32mLa memoria total, usada, libre, la arquitectura y la versión del SO\033[0m"
            ;;

        "fecha")
            echo -e "\033[33m\"fecha\"\033[32m Verás la fecha y hora exacta al momento de ejecutarlo\033[0m"
            
            ;;

        "busca")
            echo -e "\033[33m\"busca\"\033[32m Abrirá un menu con el cual puedes concontrar un archivo dentro del directorio que indiques. Debes ingresar la carpeta y tu archivo.\033[0m"
            ;;

        "creditos")
            echo -e "\033[33m\"creditos \"\033[32m Verás a los grandiosos programadores que crearon esta bonita terminal\033[0m"
            ;;
        
        "jugar")
            echo -e "\033[33m\"jugar\"\033[32m Abrirá un juego clasico de gato (Tic Tac Toe) muy entretenido para cuando estes aburrido\033[0m"
            #Jugemos buscaminas o gato
            ;;
        
        "musica")
            echo -e "\033[33m\"musica\"\033[32m Tendrás acceso a una biblioteca musical para poder reproducir música\033[0m"
            ;;

        "salir")
            echo -e "\033[33m\"salir\"\033[32m Huye de esta terminal, si tecleas esa palabra mágica volverás a la normalidad\033[0m"
            exit 0
            #No olvides salir, esta es la unica oportunidad para no perderte en un bucle infinito
            ;;

        *)
            echo -e "\033[31m Comando no reconocido \033[0m"
            ;;
            esac

done