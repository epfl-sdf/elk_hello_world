# Table des matières

- [Présentation](#présentation)
  * [Contenu du dossier DNS](#contenu-du-dossier-dns)
  * [Fichiers](#fichiers)
    + [Préfixes](#préfixes)
    + [Suffixes](#suffixes)
    
# Présentation

## Contenu du dossier DNS

Ce dossier contient les différents fichiers utiles au test de ELK sur des logs en "format" DNS.

## Fichiers

Les différents fichiers suivent les règles de nommages suivantes

### Préfixes

* On indique le nom du projet en premier, ici
```
DNS_*
```

* Le nombre de lignes contenues dans le fichier ensuite, par exemple, pour 1, 100 ou toutes les lignes
```
*1_*    *100_*    *all_*
```

* Le type de filtrage, si besoin, par exemple CSV ou grok
```
*csv_*    *grok_*
```

* Dans le cas où il y a une version, on l'indique à la fin du nommage
```
*<version>.*
```

* si c'est un fichier plus particulier, par exemple nous avons dû faire un fichier contenant nos patterns personnels, en lieu et place du nombre de lignes, nous avons indiqué la nature du fichier, ici "patterns"

### Suffixes
* Vient ensuite le suffixe qui indique le type du fichier, .conf ou encore .sh
```
*.conf     *.sh
```
