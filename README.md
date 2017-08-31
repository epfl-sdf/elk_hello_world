# Table des matières

- [Présentation](#présentation)
  * [ELK - Elasticsearch, Logstash, Kibana](#elk---elasticsearch-logstash-kibana)
  * [Elasticsearch](#elasticsearch)
  * [Logstash](#logstash)
  * [Kibana](#kibana)
    + [Création de graphes "Visualize"](#création-de-graphes-visualize)
- [Installation](#installation)
- [Utilisation](#utilisation)
  * [ELK - Elasticsearch, Logstash, Kibana](#elk---elasticsearch-logstash-kibana-1)
  * [Récupération du dépôt](#récupération-du-dépôt)
  * [Lancement des différents scripts](#lancement-des-différents-scripts)
- [Différents dossiers présents](#différents-dossiers-présents)
  * [data](#data)
  * [oldies](#oldies)
  * [projets](#projets)
- [Références - Sources](#références---sources)

# Présentation
## ELK - Elasticsearch, Logstash, Kibana

Ce trio de logiciels nous permet de récupérer des logs, de les traiter et de les afficher de manière efficace.

## Elasticsearch

<p align="justify">
Elasticsearch est une base de donnée dans laquelle nous allons envoyer tout nos logs traités au préalable par Logstash. C'est cette base de données qui va nous permettre de stocker efficacement les logs afin de les afficher et les trier plus finement dans Kibana.
</p>

La doc complète est disponible à l'adresse suivante <br>
https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html

## Logstash

<p align="justify">
Logstash est un environnement qui nous permet de récupérer les logs et d'en faire un premier traitement grâce à ces nombreux plugins afin de les envoyer ensuite dans elasticsearch. Comme vous le verrez dans les fichier .conf, ils sont découpés en trois parties; Input, Filter, Output.</p>
 
Pour nos besoin de traitement des logs wwp, distrib ainsi que htmlpages, nous avons utilisé les plugins suivant.

* CSV
  * Permet de filtrer et découper les logs donnés en Input afin de les stocker dans des champs. Facile à implémenter lorsque les logs sont bien organisés en "tableau".
* Grok
  * Permet de filtrer et découper les logs donnés en Input afin de les stocker dans des champs. Ce filtre est plus adapté dans le cas où les données en Input ne sont pas bien ordonnées.
* Ruby
  * Permet d'implémenter du code Ruby.
* Mutate
  * Permet de modifier les différents champs.
* Elasticsearch
  * Permet d'intéragir avec la base de données Elasticsearch.

La doc complète est disponible à l'adresse suivante <br>
https://www.elastic.co/guide/en/logstash/current/index.html

Tout les scripts sont fait dans des fichiers .conf et peuvent être executés de manière propre à l'aide du script `start_single_script.sh` en lui donnant les bons arguments. Son fonctionnement est expliqué plus en détails plus bas, sous Utilisation >> lancement des différents scripts.

## Kibana

<p align="justify">
Kibana est un logiciel d'interface graphique servant à afficher les résultats de traitement des logs précédemment stocké dans Elasticsearch. Le but de ce logiciel est de pouvoir visualiser les différents champs d'interêts: nom_erreur, code_erreur et site, par exemple. Avec ces graphiques on peut établir des correlations entre les différents champs. Kibana facilite aussi énormément le tri des champs par l'utilisation de divers filtres. 
</p>

<p align="justify">
Parmi ces différents paramètres d'affichage, on a utiliser les divers graphiques tels que barres, disques, histogrammes etc ... Ces moyens d'affichage combiner au filtre adéquat permet de pouvoir afficher ces données de manière optimale et de pouvoir tracker les erreurs voulues.
</p>

La doc complète est disponible à l'adresse suivante <br>
https://www.elastic.co/guide/en/kibana/5.5/index.html

### Création de graphes "Visualize"

Afin de créer la visualisation voulue pour représenter nos données, il suffit de suivre les étapes suivantes

* <b>Pour se connecter au bon serveur Kibana</b>
  * Se rendre sur le serveur, via le port dédié à Kibana, qui contient les données à afficher
 ``` 10.92.104.xxx:5601 ``` (où xxx correspond à la machine hôte sur lesquelles les données ont été envoyées)
* <b>Pour créer un index avec les données envoyées sur Elasticsearch</b>
  * Se rendre dans le menu Kibana sous "Management >> Index Patterns"
  * Dans cet onglet, créer un nouvel index en appuyant sur "Create Index Pattern" en haut à gauche.
  * Entrer le nom de l'index que vous avez utilisez pour stocker les données sous Elasticsearch.
  * Cliquer sur le bouton "Create" afin de générer le jeu de données.
* <b>Pour créer une nouvelle visualization</b>
  * Se rendre dans le menu Kibana sous "Visualize".
  * Si la liste des "Visualize" déjà créée ne s'affiche pas, cliquer sur "visualize" à droite du logo Kibana.
  * A droite de la barre de recherche des différentes "visualize" cliquer sur la boxe "+"
  * Choisisser ensuite le type de graphe que vous voulez créer puis l'index du jeu de données voulu.
  * Une fois tout ceci fait vous pouvez choisir, dans le menu dédié au graphe choisi, les options voulues (les données sur les axes, si vous voulez subdiviser le graphe, filtrer etc ...)
  * Si rien n'apparat au bout du premier "refresh" du graphe c'est que la période de temps choisie (en haut à droite) ne contient sûrement pas de données ou alors que les filtres/champs choisis sont trop restrictifs.
  
Tuto youtube afin d'avoir une introduction à kibana<br>
https://www.youtube.com/watch?v=mMhnGjp8oOI

# Installation

On installe les trois logiciels ELK simplement avec la commande:
```
./install.sh
```
Pour que cette commande marche, il faut être sous Ubuntu ou une autre
distribution utilisant `apt-get` comme gestionnaire de paquets et qui a les
mêmes noms de packets que sur les dépôts Ubuntu.

De plus, cet outil utilise des utilitaires communs sur les systèmes
Linux mais qui peuvent ne pas être installés sur tous les ordinateurs.
Ces outils sont:
* wget
* curl

# Utilisation

## ELK - Elasticsearch, Logstash, Kibana

Contrairement à ce que laisse penser la dénomination de ces trois services, ELK doit s'utiliser dans l'ordre suivant

1. Logstash - Pour pouvoir récupérer les logs et les trier.
1. Elasticsearch - Pour pouvoir stocker les logs dans une base de données.
1. Kibana - Pour pouvoir afficher les logs de manière élégante et travailler dessus.

## Récupération du dépôt
On récupère le dépôt avec:
```
git clone git@github.com:epfl-sdf/elk_hello_world.git
```

(cette commande nécessite la présence de `git` sur l'ordinateur)

Pour executer les commandes des sections suivantes, il faut se mettre dans
le dossier du dépôt.

## Lancement des différents scripts

Afin de lancer les .conf de manière plus propre il suffit d'exécuter la commande suivante
```
./start.sh
```

Il suffit de préciser, en argument:
1. Le serveur hôte qui va recevoir les données traitées et pouvoir les afficher sur Kibana
1. L'index du fichier
1. Le fichier .conf à lancer
1. Possibilité de désactiver des commentaires si on veut reseter le template, mais ce n'est plus nécessaire de reseter le template dans la dernière version de Kibana.

Une aide est disponible en entrant, comme seul argument, "-help".

<p align="justify">
Il faut ce baser sur ce script pour pouvoir en faire un correspondant au projet voulu. Cependant, depuis Kibana 5.5 il n'est plus nécessaire de changer de template ou encore d'activer les variables d'environnement avec --allow-env.
</p>

<p align="justify">L'ensemble des programmes est basé sur l'utilisation des 3 logiciels ELK (elasticsearch logstash et Kibana). Ces trois logiciels travaillent ensemble pour le traitement de logs.</p>

* Elastisearch est un logiciel d'indexation pour optimiser les recherches.
* Logstash sert a analyser et formater les log via differents plugins.
* Enfin Kibana est un logiciel d'affichage qui permet de visualiser les champs obtenus grâce à différents types de graphes.

En input on a des logs qui sont traités par Logstash, une fois filtrés ils sont envoyés vers Elasticsearch qui les indexe. Kibana sert ensuite d'interface graphique pour visualiser les résultats obtenus par Elasticsearch.

# Différents dossiers présents

## data
Ce dossier contient toutes les données nécessaires au bon fonctionnement des différents scripts.

## oldies
Ce dossier contient les vestiges de la première installation de ELK.

## projets
Ce dossier contient les différents projets qui ont été menés pour prendre en main ELK.

# Références - Sources

* Présentation ELK
https://blog.netapsys.fr/vos-logs-passent-la-seconde-avec-elk-elasticsearch-logstash-kibana/

* Guide Kibana 5.5
https://www.elastic.co/guide/en/kibana/5.5/index.html

* Filtre csv de Logstash
https://www.elastic.co/guide/en/logstash/current/plugins-filters-csv.html

* Filtre grok de Logstash
https://www.elastic.co/guide/en/logstash/current/plugins-filters-grok.html

* Filtre mutate de Logstash
https://www.elastic.co/guide/en/logstash/current/plugins-filters-mutate.html
