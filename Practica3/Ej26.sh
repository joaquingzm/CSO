#!/bin/bash

if [[ $# -lt 1 ]]; then
	echo "Error: Se esperaba por lo menos un parámetro" >&2
	exit 1
fi
cantidadInexistentes=0
array=("$@")
for ((i=1;i<$#;i+=2)); do
	if [[ -e ${array[$i]} ]]; then
		if [[ -d ${array[$i]} ]]; then
			echo "El archivo ${array[$i]} es un directorio"
		else
			echo "El archivo ${array[$i]} es un archivo regular"
		fi
	else
		echo "El archivo ${array[$i]} no existe"
		(( cantidadInexistentes=cantidadInexistentes+1 ))
	fi
done
echo "Cantidad de archivos inexistentes $cantidadInexistentes"

exit 0
