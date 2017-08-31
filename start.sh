#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf170808.1735

export LS_HEAP_SIZE="200m"
export ELASTOC_SRV="$1:9200"
export ELASTOC_IDX=$2
export CONF_FILE=$3


# Test des arguments
if [ "$1" == "-help" ] ; then
	echo "specifie les bons arguments; 1-le serveur hote, 2-l'index, 3-fichier .conf a lancer"
	     # 4- 'reset' si on veut reseter le template
	exit
elif [ -z $ELASTOC_SRV ] ; then
	echo "ERREUR: pas assez d'argument, preciser l'hote, l'index et le fichier .conf"
	exit
elif [ -z $ELASTOC_IDX ] ; then
	echo "ERREUR: pas assez d'argument, preciser l'index et le fichier .conf"
	exit
elif [ -z $CONF_FILE ] ; then
	echo "ERREUR. pas assez d'argument, preciser le fichier .conf"
	exit
else
	echo "Chargement de l'hote, de l'index et lancement du fichier .conf $CONF_FILE"
	curl -XDELETE $ELASTOC_SRV/$ELASTOC_IDX
fi

## Test si reset ou non
#if [ "$4" == "reset" ] ; then
#	echo " reset du template"
#	curl -XDELETE http://$ELASTOC_SRV/_template/$ELASTOC_IDX
#	curl -XPUT http://$ELASTOC_SRV/_template/$ELASTOC_IDX?pretty -d @wwp_all_grok_mapping.json
#else
#	echo " pas de reset du template"
#fi

/usr/share/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/$CONF_FILE
