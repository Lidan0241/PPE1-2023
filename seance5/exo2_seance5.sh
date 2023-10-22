#!/bin/bash

ANNEE=$1
location=$2

if [ -z "$1" ]; then
	echo "Le premier argument est vide. "
	exit
elif [ "$1" != "2016" ] && [ "$1" != "2017" ] && [ "$1" != "2018" ] && [ "$1" != "*" ]; then
	echo "Le premier argument est incorrect. "
	exit
elif [ -z "$2" ]; then
	echo "Le deuxième argument est vide. "
	exit
else
	cat ../ann/$1/*.ann | grep Location | cut -f 3 | head -n $2 | sort | uniq -c | sort -nr
fi

