# Journal de Lidan
# 20 septembre 2023
• L'utilité de GitHub

1. Récupérer les URL, offre un espace de stockage
2. Gérer des données textuelles et les codes ainsi que des ensembles ordonnés des modifications
3. Sauvegarder l'évolution des projets personnels ou publics
4. Indispensable pour un environnement de travail en collaboration de manière fluide

## ==>Fichier
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

## ==> commandes
- rapidité, fiabilité, flexibilité(plus d'exécutions que l'environnement graphique)
cd: change directory (va là-bas)
• ls: lister
•pwd: position actuelle (print working directory)
cp: copier
mv: move
créer un texte: echo > "nom_du_texte" .txt
créer un dossier: mkdir "nom_du_dossier"
supprimer: rmdir 
supprimer un fichier rm "nom"
rm -r: supprimer tous les fichiers (irréversible,attention)
rm -d: supprimer  seulement les fichiers vides
manuel: man "nom_de_la_commande"
head: lit de début d'un fichier
*tail*: lit la fin d'un fichier
echo: ajouter un texte à un fichier

# 27 septembre 2023
## ==> Git
- Un **système de gestion de versions** / SGV qui permet de gérer des modifications effectuées sur un dossier données de manière décentralisée; installé par défaut sur Kubuntu.
- Git est un outil qui est à installer sur les ordinateurs alors que GitHub est un service Web construit autour
de Git qui offre un espace de stockage en ligne pour les dépôt Git(mais aussi d'autres fonctionnalités)

## ==> Cryptographe asymétrique (Clé publique)
- 2 clés: publique (tout le monde peut voir) et privée(seulement accesible à moi)

## ==> Les commandes Git
- git <sous-commande> [-options...] [arguments...]
1. git clone [-options...] <URL> --> permet de créer une copie d'un dépôt existant ; clone mais pas fork(pas de mise à jour)
2. git pull --> permet de mettre à jour la branche vers la bonne version c'est à dire la toute nouvelle version en ligne ; je **tire** les changements du dépôt vers mon répertoire local
   git fetch --> permet de mettre à jour les méta-données du dépôt sur mon répertoire local; **par rapport à git pull:** fonctionne toujours, ne modifie pas les fichiers du dépôt, peut anticiper les conflits(changements incompatibles)
3. git add <file> --> permet d'indiquer les fichiers dont on veut suivre les modifications avant validation, c'est à dire une mise-en-place
    git rm <file> --> retirer du suivi un fichier
4. git commit [-m message] --> permet de décrire les changements effectués
attention: les étiquettes (tag) permettent de marquer un commit particulier
git tag [-a] [-m message] <tagname> [commit]
Donc pour pousser un tag vers GitHub:
git push origin <tagname>

5. git push --> envoie les modifications mises en place vers le dépôt distant, je **pousse** les modifications
6. git status --> permet de voir les changements de mon dossier par rapport à la version du dépôt
    git log --> permet de voir l'ensemble des commits ayant été effectués
==> Le scénario le plus simple sera donc:
**git pull --> modifications --> git add/rm --> git commit --> git push
