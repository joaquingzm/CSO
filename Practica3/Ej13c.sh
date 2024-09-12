#!/bin/bash

read nombre
echo "$(find $HOME -name $nombre )"
#probar usar exec con find
