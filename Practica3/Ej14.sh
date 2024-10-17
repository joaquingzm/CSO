#!/bin/bash
arreglo=$(ls $1)

if [[ $# != 3 ]];then
	echo "Error: Cantidad de parámetros inválida" >&2
	exit 1
fi
if [[ ! -d $1 ]];then
	echo "Error: El primer parámetro ingresado no es un directorio" >&2
	exit 1
fi
if [[ "$2" != "-a" && "$2" != "-b" ]];then
	echo "Error: Parámetro 2 inválido" >&2
	exit 1
fi
case $2 in
	-a)
		for archivo in ${arreglo[@]};do
			mv $1/$archivo $1/$archivo$3
			echo "archivo $1/$archivo renombrado a $1/$archivo$3"
		done
		;;
	-b)
		for archivo in ${arreglo[@]};do
			mv $1/$archivo $1/$3$archivo
			echo "archivo $1/$archivo renombrado a $1/$3$archivo"
		done
		;;
esac

exit 0
