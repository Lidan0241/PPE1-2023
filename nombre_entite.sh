#!/bin/bash

annee1=$1
annee2=$2
annee3=$3
type=$4

if [ $# -eq 4 ]
then
    ./exo2_seance4 "$annee1" "$type"
    ./exo2_seance4 "$annee2" "$type"
    ./exo2_seance4 "$annee3" "$type"
else
    echo " nombre d'arguments incorrect "
fi