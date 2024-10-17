#!/bin/bash

IFS=',' read -r -a array <<< "$(cat /etc/group | grep "users" | cut -d: -f4)"

case $1 in 
	"-b")
		if [[ ! $2 -gt ${#array[@]} ]]; then
			echo "Elemento de la posición $2: ${array[(($2 - 1))]}"
		else
			echo "2do parámetro supera el tamaño del array"
		fi
		;;
	"-l")
		echo "Longitud del array: ${#array[@]}"
		;;
	"-i")
		echo -n "Elementos: "
		for e in "${array[@]}";do
			echo -n "$e "
		done
		echo ""
		;;
	*)
		echo "Error: El 1er parámetro no es válido" >&2
		;;
esac


