# Table des matières

- [Présentation](#présentation)
- [Différents contenus](#différents-contenus)
  * [Fichiers](#fichiers)
    + [Préfixe](#préfixe)
    + [Suffixe](#suffixe)

# Présentation

<p align="justify">Ce dossier contient les différents fichiers de logs nécessaire pour le projet wwp
(erreurs du portage des sites en worpress). Le but est de ce faire la main sur une petite partie des logs afin de pouvoir
tous les traiter par la suite.</p>

# Différents contenus

## Fichiers

Les différents fichiers respectent les règles de nommage suivantes

### Préfixe

* On commence par indiquer le nom du projet, ici
```
wwp_*
```

* Ensuite le nombre de ligne correspondant à ce fichier, ici
```
*50_*     *1000_*
```

* Si on a un fichier un peu particulier, on l'indique juste avant le suffixe. Ici on a effectué un près-traitement sur le fichier contenant les 100 premiers logs affin de garder uniquement les lignes contenant le mot "error"
```
*error.*
```

### Suffixe

* Le suffixe indique quel type de fichier c'est, ici on est en présence de fichiers de logs
```
*.log
```
