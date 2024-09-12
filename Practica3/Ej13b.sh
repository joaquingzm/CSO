#!/bin/bash
seguir_preguntando=1
until [[ $seguir_preguntando -eq 0 ]]; do
echo -e "Elija: \n - Listar: Muestra el contenido del directorio
\n - DondeEstoy: Muestra la direccion del directorio actual
\n - QuienEsta: Muestra que usuarios se encuentran conectados"
read eleccion
echo ""	
seguir_preguntando=0
case $eleccion in
	Listar)
		echo -e "$(pwd | ls)\n"
		;;
	DondeEstoy)
		echo -e "$(pwd)"
		;;
	QuienEsta)
		echo "$(users)"
		;;
	*)
		seguir_preguntando=1
		;;
esac
echo ""
done
exit 0
