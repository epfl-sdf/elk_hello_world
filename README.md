# Table des matières

- [Présentation](#présentation)
- [Installation](#installation)
- [Utilisation](#utilisation)
- [References](#references)

# Présentation

<p align="justify">L'ensemble des programmes est basé sur l'utilisation des 3 logiciels ELK (elasticsearch logstash et Kibana). Ces trois logiciels travaillent ensemble pour le traitement de logs.</p>

* Elastisearch est un logiciel d'indexation pour optimiser les recherches.
* Logstash sert a analyser et formater les log via differents plugins.
* Enfin Kibana est un logiciel d'affichage qui permet de visualiser les champs obtenus grâce à différents types de graphes.

En input on a des logs qui sont traités par Logstash, une fois filtrés ils sont envoyés vers Elasticsearch qui les indexe. Kibana sert ensuite d'interface graphique pour visualiser les résultats obtenus par Elasticsearch.

# Installation
<p align="justify">
	L'installation des trois logiciels se fait simultanement en runnant simplement ./install.sh
</p>

# Utilisation

* Les fichiers \*.conf contiennent logstash le code de traitement des logs	
* Les fichiers \*_grok\* utilisent le filtre grok dans logstash
* Les fichiers \*_csv\* utilisent le filtre csv dans logstash
* Les fichiers \*_100\* ou \*_1000\* sont des fichiers test sur des jeux de 100 ou 1000 logs seulement
* Les fichiers \*_all\* sont des fichiers tournant avec un jeu complet de log situe dans un dossier plus haut
* Les fichiers \*.sh servent a lancer les jeux de test
* Les deux programmes de lancement wwp_all_csv_final.sh et wwp_all_grok_final.save20170817.sh nécessitent d'entrer l'adresse de l'hôte et l'index.
	* Un reset du template est possible en tapant reset.
	* .help en cas de besoin.

# References

* Presentation ELK
https://blog.netapsys.fr/vos-logs-passent-la-seconde-avec-elk-elasticsearch-logstash-kibana/

* Guide Kibana 5.5
https://www.elastic.co/guide/en/kibana/5.5/index.html

* Filtre grok de Logstash
https://www.elastic.co/guide/en/logstash/current/plugins-filters-grok.html

* Filtre csv de Logstash
https://www.elastic.co/guide/en/logstash/current/plugins-filters-csv.html

* Filtre mutate de Logstash
https://www.elastic.co/guide/en/logstash/current/plugins-filters-mutate.html
