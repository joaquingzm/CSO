#!/bin/bash
echo "expr 5 + 3 = `expr 5 + 3` " 
echo "expr 5 \> 4 = `expr 5 \> 4` "
echo "expr 5 \< 4 = `expr 5 \< 4` "
echo "Ingrese un String:"
read string
echo "expr length $string = `expr length $string`"
echo "expr substr $string 2 3 = `expr substr $string 2 3`"
exit 0
