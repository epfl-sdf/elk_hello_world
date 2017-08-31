# Table des matières

- [Présentation](#présentation)
  * [Contenu du dossier data](#contenu-du-dossier-data)
  * [Fichiers](#fichiers)
    + [Préfixes](#préfixes)
    + [Suffixes](#suffixes)
    
# Présentation

## Contenu du dossier data

Ce dossier contient les différents logs utiles au tests de ELK pour un "format" DNS.

## Fichiers

Les différents fichiers suivent les règles de nommages suivantes

### Préfixes

* On indique le nom du projet en premier, ici
```
DNS_*
```

* Le nombre de lignes contenues dans le fichier ensuite, par exemple, pour 1, 100 ou toutes les lignes
```
*100_*
```

### Suffixes
* Vient ensuite le suffixe qui indique le type du fichier, .log
```
*.log
```
