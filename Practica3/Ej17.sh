#!/bin/bash

echo "$(pwd | ls | tr -d 'aA' | tr 'b-zB-Z' 'B-Zb-z')"

exit 0 
