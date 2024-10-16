#!/bin/bash

array=($@)

cantImp=0

for e in "${array[@]}";do
	if [[ $((e % 2)) -eq 0 ]];then
		echo "$e"
	else
		cantImp=$((cantImp+1))
	fi
done
echo  "Cantidad de impares $cantImp"
exit 0
