#!/bin/bash

#Chequeo que me pasen la cantidad correcta de parámetros
if [[ $# -ne 1 ]]; then
	"Pasaje de parámetros incorrecto."
	exit 1
fi

#Asumo que todos los users se llaman igual que sus directorios personales
#y que ningún nombre se encuentra separado por espacios
users=($(ls /home))

echo "Usuario -------- Cantidad de archivos .$1" > reporte.txt

for user in "${users[@]}";do
	cantidad=$(find /home/$user -type f -name "*.$1" 2>/dev/null | wc -l)
	echo "$user          $cantidad" >> reporte.txt
done

exit 0

