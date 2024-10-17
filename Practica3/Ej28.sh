#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo "Error: Se esperaba 1 parámetro" >&2
	exit 1
fi

rutaAbsoluta="$(find / -name "$1" 2>/dev/null)"

if [[ ! -e $rutaAbsoluta ]]; then
	echo "Error: El directorio $1 no existe" >&2
	exit 4
else
	cantidadArchivosRW=0
	array=($(ls $rutaAbsoluta))
	for e in ${array[@]}; do
		if [[ -f $rutaAbsoluta/$e && -r $rutaAbsoluta/$e && -w $rutaAbsoluta/$e ]]; then
			let cantidadArchivosRW++
		fi	
	done
fi

echo "Cantidad de archivos sobre los que el usuario tiene permisos de lectura y escritura: $cantidadArchivosRW"

exit 0
