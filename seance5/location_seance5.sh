#!/bin/bash


ANNEE=$1


if [ $# -eq 2 ]
then
  cat ./Ann/$annee/*/* | grep -c
else
   echo "l'argument est incorrect. "

fi