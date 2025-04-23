#!/bin/bash

trap '' SIGINT SIGTSTP

echo -e "\033[1;35m Bienvenido. Esta terminal cuenta con 8 comandos especiales para realizar divertidas actividades \033[0m"

while true; do
    echo -e ""
    echo -e "\033[35m========= MENÚ PRINCIPAL =========\033[0m"
    echo -e "Escribe el comando del cual requieras mas información"
    echo -e " \033[43m ayuda | infosis | fecha | busca | creditos | jugar | musica | salir \033[0m"
    read -p "Dame info de: " comando

    case $comando in 

        "ayuda")
	    
            echo -e "\033[33m\"ayuda\" \033[0m \033[37m es el primer comando. Aqui siempre te explicaremos que comandos tenemos disponibles y para que puedes usarlos\033[0m"
            echo -e "Vuelve siempre que necesites ayuda con nuestros comandos especiales"
            ;;

        "infosis")
            echo -e "\033[33m\"infosis\"\033[0m: \033[37m Te mostraremos la información del sistema\033[0m"
            echo "La memoria RAM, la arquitectura y la versión del SO"
            ;;

        "fecha")
            echo -e "\033[33m\"fecha\"\033[0m: \033[37m Verás la fecha y hora exacta al momento de ejecutarlo\033[0m"
            
            ;;

        "busca")
            echo -e "\033[33m\"busca\"\033[0m: \033[37m Abrirá un menu con el cual puedes concontrar un archivo dentro del directorio que indiques. Debes ingresar la carpeta y tu archivo.\033[0m"
            ;;

        "creditos")
            echo -e "\033[33m\"creditos\"\033[0m: \033[37m Verás a los grandiosos programadores que crearon esta bonita terminal\033[0m"
            ;;
        
        "jugar")
            echo -e "\033[33m\"jugar\"\033[0m: \033[37m Abrirá un juego clasico y muy entretenido para cuando estes aburrido\033[0m"
            #Jugemos buscaminas o gato
            ;;
        
        "musica")
            echo -e "\033[33m\"musica\"\033[0m: \033[37m Tendrás acceso a una biblioteca musical para poder reproducir música\033[0m"
            ;;

        "salir")
            echo -e "\033[33m\"salir\"\033[0m: \033[37m Huye!, si tecleas esa palabra mágica volverás al menu anterior (como acaba de suceder) y si lo ejecutas en desde la terminal saldras de ella.\033[0m"
            exit 0
	    ;;

    	*)
            echo -e "\033[31m Comando no reconocido \033[0m"
            ;;
            esac

done
