# ELK - Elasticsearch, Logstash, Kibana

Ce trio de logiciels nous permet de récupérer des logs, de les traiter et de les afficher de manière efficace.

# Elasticsearch

Elasticsearch est une base de donnée dans laquelle nous allons envoyer tout nos logs traités au préalable par Logstash. C'est cette base de données qui va nous permettre de stocker efficacement les logs afin de les afficher et les trier plus finement dans Kibana.

# Logstash



# Kibana

<p align="justify">
Kibana est un logiciel d'interface graphique servant à afficher les résultats de traitement des logs précédemment effectué par Elasticsearch. Le but de ce logiciel est de pouvoir visualiser les différents champs d'interêts: nom_erreur, code_erreur et site. Avec ces graphiques on peut établir des correlations entre ces différents champs. Kibana facilite aussi énormément le tri par champ par l'utilisation de divers filtres. 
</p>

# Utilisation

## Récupération du dépôt
On récupère le dépôt avec:
```
git@github.com:epfl-sdf/elk_hello_world.git
```

(cette commande nécessite la présence de `git` sur l'ordinateur)

Pour executer les commandes des sections suivantes, il faut se mettre dans
le dossier du dépôt.

## Installation des outils nécessaires

On installe les trois logiciels ELK simplement avec la commande:
```
./install_2.sh
```
Pour que cette commande marche, il faut être sous Ubuntu ou une autre
distribution utilisant `apt-get` comme gestionnaire de paquets et qui a les
mêmes noms de packets que sur les dépôts Ubuntu.

De plus, cet outil utilise des utilitaires communs sur les systèmes
Linux mais qui peuvent ne pas être installés sur tous les ordinateurs.
Ces outils sont:
* `wget`
* `curl`

## Graphiques


