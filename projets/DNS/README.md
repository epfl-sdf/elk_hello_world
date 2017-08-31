# Table des matières

- [Présentation](#présentation)
  * [Contenu du dossier DNS](#contenu-du-dossier-dns)
  * [Nomenclature des fichiers](#nomenclature-des-fichiers)
    + [Fichiers de bases](#fichiers-de-bases)
    + [Fichiers plus particuliers](#fichiers-plus-particuliers)
    
# Présentation

## Contenu du dossier DNS

Ce dossier contient les différents fichiers utiles au test de ELK sur des logs en "format" DNS

## Nomenclature des fichiers

Les différents fichiers suivent les règles de nommages suivantes

### Fichiers de bases

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

* Dans le cas o il y a une version, on l'indique à la fin du nommage
```
*<version>.*
```

* Vient ensuite le suffixe qui indique le type du fichier, .log, .conf ou encore .sh
```
*.conf    *.log     *.sh
```

### Fichiers plus particuliers

Nous avons dû faire un fichier contenant nos patterns personnels, en lieu et place du nombre de lignes, nous avons indiqué la nature du fichier, ici "patterns"
