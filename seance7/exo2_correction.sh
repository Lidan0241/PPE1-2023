#!/bin/bash

FICHIER="$1"
TOPN="$2"

if [ -z "$2" ]
then
    TOPN=25
fi

#double crochets: permettent de faire =~, une expression régulière avancée
if ! [[ "$2" =~[1-9][0-9]*]]
then
    echo "saisir un chiffre"
    exit
fi

$FICHIER sort |  uniq -c | sort -n | tail -n 3
