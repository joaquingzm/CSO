#!/bin/bash
echo -e "Elija alguna opción o ninguna para el uso de if:\n- 1\n- 2"
read opcion
if [[ "$opcion" = "1" ]]; then
	echo "Elegiste opción 1 "
elif [[ "$opcion" = "2" ]]; then
	echo "Elegiste opción 2 "
else
	echo "No elegiste ninguna de las dos"
fi
echo -e "\nElija alguna opción o ninguna para el uso del case:\n- 1\n- 2"
read opcion
case $opcion in
	1)
		echo "Elegiste opción 1"
		;;
	2) 
		echo "Elegiste opción 2"
		;;
	*)
		echo "No elegiste ninguna de las dos"
	;;
esac
echo -e "\nUso del for sobre secuencia de números:"
for ((i=1;i<=5;i++)); do
	echo "$i"
done
echo -e "\nUso del for sobre una lista de elementos:"
for string in palabra1 palabra2 palabra3; do
	echo $string
done
echo -e "\nUso del while para contar:"
num=1
while [[ $num -le 5 ]]; do
	echo $num
	num=$((num + 1))
done
echo -e "\nUso del until para contar:"
until [[ $num -eq 0 ]];do
	echo $num
	num=$((num - 1))
done
exit 0
