#!/bin/bash

text=$1

# tr remplacer tous les majuscules par minuscules
# tr -d --> supprimer toutes les ponctuations
# sed --> saut de ligne pour chaque mot

if [ $# -lt 1 ]
then
	echo "on a besoin un fichier texte pour l'argument"
	exit
fi

cat "$text" | tr "[[:upper:]]" "[[:lower:]]"| tr -d "[[:punct:]]" | sed 's/ /\n/g' > candide_trie.txt