# ELK - Elasticsearch, Logstash, Kibana

Ce trio de logiciels nous permet de récupérer des logs, de les traiter et de les afficher de manière efficace.

# Elasticsearch

<p align="justify">
Elasticsearch est une base de donnée dans laquelle nous allons envoyer tout nos logs traités au préalable par Logstash. C'est cette base de données qui va nous permettre de stocker efficacement les logs afin de les afficher et les trier plus finement dans Kibana.
</p>

La doc complète est disponible à l'adresse suivante <br>
https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html

# Logstash

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

# Kibana

<p align="justify">
Kibana est un logiciel d'interface graphique servant à afficher les résultats de traitement des logs précédemment stocké dans Elasticsearch. Le but de ce logiciel est de pouvoir visualiser les différents champs d'interêts: nom_erreur, code_erreur et site, par exemple. Avec ces graphiques on peut établir des correlations entre les différents champs. Kibana facilite aussi énormément le tri des champs par l'utilisation de divers filtres. 
</p>

<p align="justify">
Parmi ces différents paramètres d'affichage, on a utiliser les divers graphiques tels que barres, disques, histogrammes etc ... Ces moyens d'affichage combiner au filtre adéquois permet de pouvoir afficher ces données de manière optimale et de pouvoir tracker les erreurs voulues.
</p>

La doc complète est disponible à l'adresse suivante <br>
https://www.elastic.co/guide/en/kibana/5.5/index.html

## Création de graphes "Vizualise"



# Utilisation

## Récupération du dépôt
On récupère le dépôt avec:
```
git clone git@github.com:epfl-sdf/elk_hello_world.git
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
* wget
* curl

## Lancement des différents scripts

Afin de lancer les .conf de manière plus propre il existe un script
```
wwp_all_csv_final.sh
```

Il suffit de préciser, en argument:
1. Le serveur hôte qui va recevoir les données traitées et pouvoir les afficher sur Kibana
1. L'index du fichier
1. Si on veut reseter le template

Une aide est disponible en entrant, comme seul argument, "-help".

<p align="justify">
Il faut ce baser sur ce script pour pouvoir en faire un correspondant au projet voulu. Cependant, depuis Kibana 5.5 il n'est plus nécessaire de changer de template ou encore d'activer les variables d'environnement avec --allow-env.
</p>
