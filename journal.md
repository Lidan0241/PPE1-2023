# Journal de Lidan
## 20 septembre 2023
• L'utilité de GitHub

1. Récupérer les URL, offre un espace de stockage
2. Gérer des données textuelles et les codes ainsi que des ensembles ordonnés des modifications
3. Sauvegarder l'évolution des projets personnels ou publics
4. Indispensable pour un environnement de travail en collaboration de manière fluide

# ==>Fichier
- Tout est fichier
- contruction de chaîne de commandes qui les manipulent
- Chaque commande - capable de faire une chose & intéragir avec les autres (simple --> complexe)
- arborescence: représente tout l'ordinateur, un dossier peut être dans un autre
- Les chemins:
  - Chemin absolu: comme une adresse complète qui dit exactement où se trouve un fichier ou un dossier. Commence par la racine, indépendant du contexte, fixe et invariable
 exemple : /home/pierre/documents/INALCO/cours/2023/PPE1/tmp/2
   Commence toujours par un slash
  - Chemin relatif: comme donner des indication à partir d'un emplacement actuel, dépendnat du contexte; exemple: PPE./tmp/2 --> le point signifie relatif

/:la racine
~/dossier personnel de l'utilisateur
./:dossier courant
../: dossier parent
?: n'importe quel caractère
*: remplace une suite de caractère

# ==> commandes
- rapidité, fiabilité, flexibilité(plus d'exécutions que l'environnement graphique)
cd: change directory (va là-bas)
ls: lister
pwd: position actuelle (print working directory)
cp: copier
mv: move
créer un texte: echo > "nom_du_texte" .txt
créer un dossier: mkdir "nom_du_dossier"
supprimer: rmdir 
supprimer un fichier rm "nom" --> mais ça n'a pas marché, j'ai essayé rm -r "nom" a bien marché
manuel: man "nom_de_la_commande"
head: lit de début d'un fichier
tail: lit la fin d'un fichier
