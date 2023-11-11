#!/bin/bash

script="./exo1.sh"
mots=$($script $text)
text=$1
nb_mots=$2

# vérification de l'argument
if [ $# -lt 1 ]
then
	echo "on a besoin un fichier texte pour l'argument"
	exit
fi

if [ -z "$2" ]
then
    nb_mots=25
fi

mot_plus_frequent=$(cat "$mots" | sort | uniq -c| sort -nr | head -n $nb_mots)

echo "$mot_plus_frequent" > mot_plus_frequent.txt