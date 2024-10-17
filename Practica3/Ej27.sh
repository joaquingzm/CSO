#!/bin/bash

inicializar() {
	array=()	
	return 0
}

agregar_elem() {
	if [[ $# -ne 1 ]]; then
		echo "Error: Se esperaba un parámetro" >&2
		return 1
	fi
	array+=("$1")
	return 0
}

longitud() {
	echo "Longitud del array: ${#array[@]}"
	return 0
}

imprimir() {
	echo "Array: ${array[@]}"
	return 0
}

inicializar_Con_Valores() {
	if [[ $# -lt 2 ]]; then
		echo "Error: Se esperaba al menos 2 parámetros" >&2
		return 1
	fi
	inicializar
	for ((i=0;i<$1;i++)); do
		agregar_elem $2
	done
	return 0
}

inicializar_Con_Valores 4 5
imprimir
longitud
exit 0
