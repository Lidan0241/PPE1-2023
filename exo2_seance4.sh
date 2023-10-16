#!/bin/bash

NB1=$(cat ~/2016/*.ann | wc -l)
echo "nombre d'annotations en 2016: $NB1"

NB2=$(cat ~/2017/*.ann | wc -l)
echo "nombre d'annotations en 2017: $NB2"

NB3=$(cat ~/2018/*.ann | wc -l)
echo "nombre d'annotations en 2018: $NB3"
