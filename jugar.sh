#!/bin/bash

#Podemos crear un juego de gato, 

echo "Bienvenido al famoso gato! Veamos si puedes vencerme"
echo "Escribe 'salir' en cualquier momento para terminar el juego"



# Declaramos un tablero vacío con 9 espacios disponibles
board=(" " " " " " " " " " " " " " " " " ")

#Para los movimientos en el tablero vamos a colocar el valor en el array board, este imprimira los valores actuales

tablero() {
  echo "${board[0]} :: ${board[1]} :: ${board[2]}"
  echo "::::::::::::"
  echo "${board[3]} :: ${board[4]} :: ${board[5]}"
  echo "::::::::::::"
  echo "${board[6]} :: ${board[7]} :: ${board[8]}"
}

#Una funcion para el movimiento del cpu, es solo aleatorio 
cpu(){
    while true; do
        pos=$((RANDOM % 9))
        if [[ ${board[$pos]} == " " ]]; then
            board[$pos]="o"
            echo "La CPU eligio la posición $pos"
            break
        fi
    done
}

#COn esta función podemos verificar si ya existe algun ganador con los movimientos existentes
verificador() {
  for i in 0 3 6; do
    if [[ ${board[$i]} != " " && ${board[$i]} == ${board[$i+1]} && ${board[$i]} == ${board[$i+2]} ]]; then
      echo "¡Gana ${board[$i]}!"
      tablero
      exit
    fi
  done

  for i in 0 1 2; do
    if [[ ${board[$i]} != " " && ${board[$i]} == ${board[$i+3]} && ${board[$i]} == ${board[$i+6]} ]]; then
      echo "¡Gana ${board[$i]}!"
      tablero
      exit
    fi
  done

  if [[ ${board[0]} != " " && ${board[0]} == ${board[4]} && ${board[0]} == ${board[8]} ]]; then
    echo "¡Gana ${board[0]}!"
    tablero
    exit
  fi

  if [[ ${board[2]} != " " && ${board[2]} == ${board[4]} && ${board[2]} == ${board[6]} ]]; then
    echo "¡Gana ${board[2]}!"
    tablero
    exit
  fi


full=1
  for cell in "${board[@]}"; do
    if [[ $cell == " " ]]; then
      full=0
      break
    fi
  done

  if [[ $full -eq 1 ]]; then
    echo "¡Empate!"
    tablero
    exit
  fi


}

#COmienza el juego

while true; do
  echo "Tu turno. Elige una posición (0-8): "
  read pos
  
  if [[ "$pos" == "salir" ]]; then 
    echo "Gracias por jugar. ¡Nos vemos luego!"
    exit
  fi

  if [[ "$pos" =~ ^[0-8]$ && ${board[$pos]} == " " ]]; then
    board[$pos]="X"
    verificador
    cpu
    verificador
    tablero
else
    echo "Casilla inválida, intenta de nuevo"
fi   
     
done
