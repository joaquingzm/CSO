#!/bin/bash
arreglo=$(ls $1)

if [[ $# != 3 ]];then
	echo "Cantidad de parámetros inválida"
	exit 1
fi
if [[ ! -d $1 ]];then
	echo "El primer parámetro ingresado no es un directorio"
	exit 1
fi
if [[ $2 -ne "-a" || $2 -ne "-b" ]];then
	echo "Parámetro 2 inválido"
	exit 1
fi
case $2 in
	-a)
		for archivo in ${arreglo[*]};do
			mv $1/$archivo $1/$archivo$3
			echo "archivo $1/$archivo renombrado a $1/$archivo$3"
		done
		;;
	-b)
		for archivo in ${arreglo[*]};do
			mv $1/$archivo $1/$3$archivo
			echo "archivo $1/$archivo renombrado a $1/$3$archivo"
		done
		;;
esac

exit 0
