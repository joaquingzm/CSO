#!/bin/bash
# $# representa el número de argumentos pasados al script
# $* contiene todos los argumentos pasados al script en forma de string
# $? muestra el código de salida del último comando ejecutado
# $HOME contiene la ruta del directorio personal del user ejecutando el script
echo $1
echo $#
echo $*
echo $?
echo $HOME
exit 0
