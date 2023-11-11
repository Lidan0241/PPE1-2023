#!/bin/bash

fichier=$1 
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

paste 