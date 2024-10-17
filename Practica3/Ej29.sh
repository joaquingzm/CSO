#!/bin/bash

array=($(ls /home | grep "\.doc" ))

verArchivo() {
	for e in ${array[@]}; do
		if [[ "$e" == "$1" ]];then
			cat /home/$1
			return 0
		fi
	done
	echo "Error: Achivo no encontrado"
	return 5
}

cantidadArchivo() {
	echo "${#array[@]}"
}

borrarArchivo() {
	echo "Desea eliminar $1 lógicamente?(Si/No)"
	read eleccion
	i=0
	for e in ${array[@]}; do
		if [[ "$e" == "$1" ]]; then
			unset array[$i]
			array=("${array[@]}")
			if [[ "$eleccion" == "No" ]]; then
				rm /home/$1
			fi
			return 0
		fi
	echo "Error: Archivo $1 no encontrado" >&2
	return 10
	done
}

cantidadArchivo
verArchivo hola.doc
borrarArchivo chau.doc
exit 0
