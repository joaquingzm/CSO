#!/bin/bash

array=(10 3 5 7 9 3 5 4)

productoria() {
	local producto=1
	for e in "${array[@]}";do
		producto=$((producto*e))
	done
	echo "$producto"
}

productoria

exit 0

