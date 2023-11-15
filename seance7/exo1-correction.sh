#!/bin/bash

#! est une négation; je rentre dans mes conditions seulement si il n'y pas de fichier en argument

if [ ! -f "$1"]
then
	echo "pas de fichier en argument"
	exit
fi

grep -P -o "\p{Latin}+" | tr "[:upper]" "[:lower:]" | tr "ÉÀÈ" "éàè" | less
