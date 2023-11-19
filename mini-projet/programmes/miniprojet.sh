#!/usr/bin/env bash

URLS=$1
i=1


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
	i=$(expr $i + 1)
	
done < $URLS

if [[ $# -ne 1 ]]
then
	echo "On veut exactement un argument au script."
	exit
fi

if [ ! -f ../urls/$1 ]
then
	echo "le fichier n'existe pas. "
	exit
fi

lineno=1
URLS=$1

# \: pour échapper les caractères, pour taper les guillemets au lieu de fermer les balises
# ce n'est pas obligatoire ici dans ce casf

echo "<html>
	<head>
	  	<meta charset=\"UTF-8\">
		<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css\">
	</head>
	<body>" > "../tableau/tableau.html"
echo "	<div class=\"container\" style=\"background-color: beige;\">
		<h1 class="title" style=\"text-align: center;\">Miniprojet - PPE</h1>
		<h2 class="subtitle">Tableau URL</h2>
		<table class=\"table is-striped\">
		<tr>
			<th><ligne</th>
			<th>URL</th>
			<th>code HTTP</th>
			<th>encodage</th>
		</tr>" >> "../tableau/tableau.html"



while read -r URL
do
	reponse=$(curl -s -I -L -w "%{http_code}" -o /dev/null $URL)
	encoding=$(curl -s -I -L -w "%{content_type}" -o /dev/null $URL | egrep -o "charset=\S+" | cut -d"=" -f2 | tail -n 1)
	echo "<tr>
		<td>$lineno</td>
		<td>$URL</td>
		<td>$reponse</td>
		<td>$encoding</td>
	</tr>" >> "../tableau/tableau.html"
	lineno=$(expr $lineno + 1) 
done < ../urls/$URLS

echo 	"</table>
</div>
</body>
</html>" >> "../tableau/tableau.html"
