#!/bin/bash

if [ $# -eq 0 ];then
	echo "Nu sunt argumente in linia de comanda"
	exit 1
fi

argumente=("$@")
nrElem=${#argumente[@]}

echo "Argumente in ordine inversa:"

for((i=$nrElem-1; i>=0; i--)) do
	echo "${argumente[$i]}"
done
