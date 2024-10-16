#!/bin/bash

pila=()
length=0

push () {
	for elemento in "$@"; do
		pila+=("$elemento")
	done
	length=$((length + $#))
}

pop () {
	if [[ $length -eq 0 ]]; then
		return 1
	fi
	elemento="${pila[-1]}"
	unset pila[-1]
	length=$((length - 1))
	echo "$elemento"
}

print () {
	echo "${pila[*]}"
	return 0
}

push 1 2 3 4 5 6 7 8 9 10

for ((i=0;i<3;i++)); do
	e=$(pop)
	echo "$e"
done

echo "$length"

print

exit 0

