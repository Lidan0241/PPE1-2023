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
rm -r: supprimer un repertoire non vide et son contenu(irréversible)
rm -d: supprimer  seulement les repertoires vides
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
git tag [-a] [-m message] <tagname> [commit] (numéro de chaque commit est affiché sur GitHub)
Donc pour pousser un tag vers GitHub:
git push origin <tagname> 
5. git push --> envoie les modifications mises en place vers le dépôt distant, je **pousse** les modifications
6. git status --> permet de voir les changements de mon dossier par rapport à la version du dépôt
    git log --> permet de voir l'ensemble des commits ayant été effectués
## ==> Le scénario le plus simple sera donc:
- **git pull --> modifications --> git add/rm --> git commit** 
- **git add . --> git commit -m"message" --> git push --> git status (le point ici signifie j'ajoute le dossier courant où je me trouve)**
- **git clone (il faut cloner l'URL SSH mais non HTTPS) --> git push --> git commit --> git status**
- Cloner un repertoire de GitHub: git clone + URL SSH --> test réussi sur GitHub avec répertoire public nommé git_test
- -> N'oublie surtout pas à ajouter "le message" directement après git commit -m sinon une autre page s'affiche
- commande "git tag" montre tous les tags effectués, git show + <tag name> montre le contenu ajouté sur ce tag

# 04 octobre 2023
# Corriger les erreurs 
##  2 commandes à utiliser
- 
- 
**Moyens de revenir en arrière**
- HEAD: représente le commit sur lequel je suis en train de travailler - le commit en cours mais pas les commits déjà synchronisé en ligne; origin->main: version synchronisée; HEAD->main:le commit courant sur ma machine, origin/HEAD: sur GitHub
- <tag> représente le commit sur lequel j'ai mis un tag
- ^[N]: 
- ~[N]: représente l'ascendance directe du commit (linéaire) --> pour ce semestre

**Défaire**
**option soft**
- git reset HEAD~
--> revient à dernière la version du dépôt et **annule la mise-en-place** (revient à la version précédente avant git commit) 
- ~ signifie remonter de 1 commit
- git reset --soft HEAD~
--> le fichier sera toujours prêt à commiter; n'annule pas la mise-en-place
- git reset fonctionne sur des **commit entiers**, pas sur des fichiers spécifiques
**option hard**
- git reset --hard
annule le commit, on perd tous les changement qu'on a faits
**revenir à un commit spécifique**
- git reset <commit> --> légère différence avec git revert;
on oublie le changement
- git revert <commit>; on garde le changement --> creats a new commit with the resulting changes.
- différence entre reset et revert:
git revert sert à annuler des changments commités, tandis que git reset HEAD permet d'annulers des changements non commités;
on annule ce qu'on a fait et on le marque, crée **un nouveau commit** où les changements sont annulés; 
- git log (--oneline): pour obtenir les derniers changements faits et ses commits (avec tag, l'identifiant SHA, qui est une longue chaîne de lettres et de nombres)
- git restore: sert à restorer le dernier changement commité et supprimer le changement local non-commité d'après.
- git checkout: sert à créer des branches ou basculer entre elles. (une branche: en quelque sorte comme créer une copie de mon projet; La branche par défaut dans Git s’appelle master. Cette branche master va se déplacer automatiquement à chaque nouveau commit pour pointer sur le dernier commit effectué tant qu’on reste sur cette branche.)

# 11 octobre 2023
# Les pipelines
##  Flux d'entrées et sortie
- Stdin: l'entrée standard (par défaut le clavier)
- stdout: la sortie standard (par défaut l'écran)
- stderr: la sortie d'erreurs standard (par défaut l'écran)
- < remplace le clavier par le contenu d'un fichier
- > écrit stdout dans un fichier
- >> on écrit en ajoutant la sortie à la fin d'un fichier, sinon les chevrons simples écrasent le contenu existant du fichier --> tout recommencer à zéro (à partir de la 2ème fois du chevron faut utiliser double)

## commande bash à lancer
- wc: affiche nombre de ligne, nombre de mots, nombre de caractères
- ctrl + D: finir de saisir au clavier
- wc > nom_fichier: par d'argument; le chevron est une redirection d'entrée et sorti, marque la fin de la commande; il n'est pas capable de faire nom_fichier et puis afficher les infos avec des différents noms de fichiers
- pipe: |
- ann: fichier de tabulations, des fichiers tabulaires
- grep université: retourner toutes les lignes de textes où se trouve "université"
- wc > output.txt: créer un fichier en envoyant le résultat de wc dessus
- wc -l: afficher le nombre de lignes ou appraît le motif
- différence echo et cat:
echo est pour éditer un texte(formater les résultats), tant dis que cat est seulement pour afficher le contenu d'un fichier.
- cut: sélectionner des conlonnes; cut -f: extraire des sections spécifiques de chaque ligne d'un fichier donné (colonnes); eg: cut -f 3: con garde la 3ème conlonne et supprimer le reste
- uniq: supprimer les lignes qui se répètent
- head: ne prendre que les 10 premières ligne de sorties(pour vérifier si le résultat est correct); head -n 15: afficher les 15 premières lignes
- sort: trier des lignes (de façon alphabétique); sort -n(de façon numérique)

## Introduction aux scripts
- format du fichier: bash script.sh
- ajouter un commentaire: #
- ajouter un shebang: #!/usr/bin/bash --> si ça ne marche pas, entrer env dans le terminal pour voir la "path" du fichier.sh, dans mon cas le shebang est #!/bin/bash
- pour voir si un fichier est exécutable: ls -l
- eg: -rw-r--r--@ 1 lydia  staff  710 13 oct 22:24 output.txt
ici -rw-r--r- représente les 3 conlonnes des permissions de fichier; 
1. le premier caractère indique s'il s'agit d'un fichier ordinaire(-) ou d'un répertoire(d) - dans ce cas: ordinaire
2. rw: les permissions pour le propriétaire du fichier est de lire et écrire, mais pas exécuter.
3. r--: indique les permissions pour le groupe auquel le fichier appartient; dans ce cas, les nombres ont la permission de lire mais pas modifier ni exécuter
4. r--: indique la permission pour tous les autres utilisateurs; donc seulement lire;
- Donc, pour rendre un fichier exécutable: chmod +x nom.sh
une autre solution: chmod 755 nom.sh
- pour expliquer le chiffre 755: r(read):4; w(write):2, x(exécuter):1; donc le propriétaire peut read/write/exécuter, groupe et les autres peuvent lire et exécuter.
- Pour exécuter: ./nom_du_fichier

## Arguments et variables
- On donne la valeur avec"="(ne mettre pas d'espace)des arguments aux variable $1, $2, $3…
- créer des nouvelles variables avec des noms explicites: FICHIER_URLS=$1
- on peut aussi stocker le resultat d'une commande en l'écrivant dans $()

# 18 octobre 2023
# Instructions de contrôle
## Instruction conditionnelles
- On peut aussi utiliser des expressions régulieres.

```shell
if condition
then
  echo "la condition est valide."
else
  echo "la condition est invalide."
fi
```

## Conditions possibles 
- -f fichier: vrai si le fichier existe
- -d dossier: vrai si le dossier existe
- -s fichier: vrai si le fichier existe est n'est pas vide
- -n chaine: vrai si la chaîne n'est pas vide
- -z : vrai si la chaîne est vide
- =: identique; !=: différent
- eq: égal; -ne: différent(not equl); lt: less than; gt: greater than; le: less or equal; ge: greater or equal; example= a -ge b

## Boucle for

```shell
for ELEMENT in a b c d e
do
 expr...(expr est une calculatrice)
 echo ...
done
```

## Boucle while

```shell
while [condition];
do
  echo "continue à boucler";
done
```
- la commande read est souvent utilisée avec WHILE. Démo: 

```shell
while read -r LINE; do
echo "la ligne: $LINE"
if [[ $LINE =∼ ^https?:// ]] then
echo "ressemble à une URL valide"
```
- pour sortir du boulce infini: Ctrl + C
- seq: séquence de nombre; par example

```shell
for val in $(seq 3 12)
do
  echo "val vaut $val"
done
```
- La sortie sera: val vaut 3, val vaut 4...val vaut 12.

- Différence avec -lt

```shell
N=0
while [$N -lt 10]
do
  echo "on en est à $N"
  N=$(expr $N + 1)
done
echo "on a fini"
```
la sortie sera:
on en est à 0
on en est à 1...
on en est à 9
on a fini
-lt exlut le dernier chiffre marqué.

## HTML
- Hyper Text Markup Language: un langage de balise pour représenter des pages web. Format reconnu par tous les navigateurs; il permet de structurer l'info, enrichir le texte et donner des indications pour interagir avec l'utilisateur.

## Nomenclature des codes HTTP
- 1xx: information
- 200: réussite
- 3xx: redirections
- 4xx: erreurs du client; 404: la page n'existe plus
- 5xx: erreurs du serveur; 503: le service est momentanément indisponible

## Lynx
- Un navigateur web en terminal qui permet de récupérer et afficher sans navigation dans le terminal une page web avec uniquement des textes et des liens
- aller entre les options : flèche basse, accéder aux options : flèche droite, revenir en arrière : flèche gauche ; touche q → y : sortir du site

## wget et cURL
- sont deux commandes qui vont pouvoir nous permettre de récupérer des pages web sans passer par un navigateur, la différence principale entre les deux commandes et que wget écrit dans un fichier et cURL écrit dans le terminal.


## Projet PPE
https://github.com/valentinefleith/PPE1-Groupe.git
Les trois langues que nous allons étudier sont le français, l'anglais et le chinois. Je suis en charge pour la partie des corpus du chinois.
Nous nous sommes mises d'accord pour choisir le mot **"argent"** pour notre projet. Nous avons choisi ce mot nous sommes intéressées de découvrir ses utilisations et ses emplois sur les pages web dans différentes langues.

Rendu du projet: 7 janvier

