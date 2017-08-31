# Table des matières

- [Table des matières](#table-des-matières)
- [Présentation](#présentation)
- [Différents contenus](#différents-contenus)
  * [Dossier](#dossier)
    + [data](#data)
  * [Fichier](#fichier)
    + [Préfixe](#préfixe)
    + [Suffixe](#suffixe)

# Présentation

Ce dossier contient les différents fichiers nécessaires au fonctionnement des tests sur les logs de wwp (erreurs du portage des sites en worpress). Le but est de ce faire la main sur une petite partie des logs afin de pouvoir tous les traiter par la suite.

# Différents contenus

## Dossier

### data

Le dossier data contient tout les logs liés à ce projet.

## Fichier

Les différents fichier respectent les règles de nommage suivantes

### Préfixe

* On commence par indiquer le nom du projet, ici
```
wwp_*
```

* Ensuite le nombre de ligne correspondant à ce fichier, ici
```
*1000_*
```

* Le type de filtre utilisé
```
*csv_*    *grok_*
```

* Si c'est un fichier particulier, par exemple, un fichier sûr => save
```
*save*
```

### Suffixe

* Le suffixe indique quel type de fichier c'est , si c'est un fichier de config ou un fichier d'éxecution bash
```
*.conf*     *.sh*
```
