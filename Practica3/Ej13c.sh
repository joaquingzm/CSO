#!/bin/bash
read nombre
if [ ! -e $nombre ]; then
	echo "no se encontro el archivo/directorio, creando directorio"
	mkdir $nombre
	exit 1
fi
file $nombre
exit 0

