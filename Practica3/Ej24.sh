#!/bin/bash

array1=(1 80 65 35 2)
array2=(5 98 3 41 8)

for (( i=0 ; i<${#array1[@]} ; i++ )); do
	echo "La suma de las posiciones $i de los array es $((array1[$i] + array2[$i]))"
done

exit
