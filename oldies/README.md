# Table des matières

- [Présentation](#présentation)
  * [Contenu du dossier oldies](#contenu-du-dossier-oldies)
  * [Fichiers](#fichiers)
    
# Présentation

## Contenu du dossier oldies

Ce dossier contient les différents fichiers utilisés dans la première installation de ELK.

## Fichiers

* install_OLD.sh
  * C'est le fichier d'installation de ELK, il n'installe pas la dernière version, d'où sont status de vieux fichier.

* ipconfig.sh
  * Ce fichier met à jour l'adresse ip de la machine dans les services kibana et elasticsearch. Comme c'est fait durant l'installation,
il n'a pas de raison d'être.

* kibana_start.sh
  * Ce fichier démarre le service kibana.

* t1, t2
  * Ces deux fichiers sont des templates personnalilsés pour afficher les données dans un autre format sur kibana. Ils sont devenu
inutiles avec le passage à la dernière version.

* upgrade_elk.sh
  * Ce fichier permet de mettre à jour la solution ELK. Le processus c'est vu automatisé dans le nouveau script install.sh et est donc devenu obsolète.
