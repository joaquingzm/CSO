#!/bin/bash

array=($(cat /etc/group | grep "users" | cut -d: -f4 | grep ","))

case $1 in 
	"-b")
		if [[ ! $2 -gt ${#array[@]} ]]; then
			echo "${array[$2]}"
		else
			continue
		fi
		;;
	"-l")
		echo "${#array[@]}"
		;;
	"-i")
		for e in "${array[@]}";do
			echo "$e"
		done
		;;
	*)
		echo "Error en los parametros"
		;;
esac


