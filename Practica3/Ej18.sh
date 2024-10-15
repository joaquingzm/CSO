#!/bin/bash

if [[ $# -ne 1 ]];then
	"Pasaje de parámetros incorrecto"
	exit 1
fi

while [[ -z $(who | cut -d ' ' -f1 | grep -w "$1") ]];do
	sleep 10
done

echo "Usuario $1 logueado en el sistema"

exit 0
