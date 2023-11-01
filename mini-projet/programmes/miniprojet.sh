#!/usr/bin/env bash

URLS=$1
i=1


if [ $# -eq 1 ];
then
	echo "OK"
else
	echo "il faut un fichier en argument. "
	exit
fi


if [ -f $URLS ];
then
	echo "OK"
else
	echo "il faut un fichier en argument. "
	exit
fi

while read -r line;
do
	HTTP=$(curl -Is ${line} | egrep -ow "HTTP.*?[[:digit:]]{3}" | cut -d ' ' -f2)
	ENCODAGE=$(curl -Is ${line} | egrep -o "\bcharset=.*?\b")
	
	
	if [ $HTTP -eq 301 ];
	then
		
		TEST=$(curl -ILs ${line} | egrep -ow "HTTP.*?[[:digit:]]{3}" | cut -d ' ' -f2)
		
		echo -e "${i}\t${line}\t${TEST}\t${ENCODAGE}"
	else
	
		echo -e "${i}\t${line}\t${CODE_HTTP}\t${ENCODAGE}"
	fi
	
	#incrémentation de compteur
	I=$(expr $i + 1)
	
done < $URLS


