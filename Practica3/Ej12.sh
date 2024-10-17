#!/bin/bash

multiplicacion() {
	echo $(($1 * $2))
}
suma() {
	echo $(($1 + $2))
}
resta() {
	echo $(($1 - $2))
}
comparar() {
	if [[ $1 -gt $2 ]]; then
		echo "$1 mayor que $2"
	elif [[ $1 -lt $2 ]]; then
		echo "$2 mayor que $1"
	else
		echo "$1 igual que $2"
	fi
}
division() {
	echo $(($1 / $2))
}
modulo() {
	echo $(($1 % $2))
}


if [[ $# -ne 3 ]]; then
	echo "Error: Se esperaban 3 parámetros" >&2
	exit 1
fi
case $3 in
	+)
		echo "Resultado de la suma: $(suma $1 $2)"
		;;
	-)
		echo "Resultado de la resta: $(resta $1 $2)"
		;;
	\*)
		echo "Resultado de la multiplicacion: $(multiplicacion $1 $2)"		      ;;
	/)
		echo "Resultado de la división: $(division $1 $2)"
		;;
	%)
		echo "Resultado del modulo: $(modulo $1 $2)"
		;;
	*)
		echo "Error: La operacion $3 no es válida" >&2
		exit 1
		;;
esac
echo "LLegó al final del script"
exit 0
