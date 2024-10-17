#!/bin/bash

while true; do
	echo -e "Elija: \n - Listar: Muestra el contenido del directorio
	\n - DondeEstoy: Muestra la direccion del directorio actual
	\n - QuienEsta: Muestra que usuarios se encuentran conectados"
	read eleccion
	echo ""	
	case $eleccion in
		Listar)
			echo -e "$(pwd | ls)\n"
			break
			;;
		DondeEstoy)
			echo -e "$(pwd)"
			break
			;;
		QuienEsta)
			echo "$(users)"
			break
			;;
		*)
			echo "Por favor elija alguna de las opciones"	
			;;
	esac
	echo ""
done
exit 0
