#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf170808.1735

export LS_HEAP_SIZE="80m"
export ELASTOC_SRV="$1:9200"
export ELASTOC_IDX=$2

# Test des arguments
if [ -z $ELASTOC_SRV ] ; then
	echo "ERREUR: pas assez d'argument, preciser l'hote"
	exit
elif [ "$1" == "-help" ] ; then
	echo "specifie les bons arguments; 1-le serveur hote, 2-l'index, 3-'reset' si on veut reseter le template"
	exit
elif [ -z $ELASTOC_IDX ] ; then
	echo "ERREUR: pass assez d'argument, preciser l'index"
	exit
else
	echo "chargement de l'hote et de l'index"
	curl -XDELETE $ELASTOC_SRV/$ELASTOC_IDX
fi

# Test si reset ou non
if [ "$3" == "reset" ] ; then
	echo "reset du template"
	curl -XDELETE http://$ELASTOC_SRV/_template/$ELASTOC_IDX
	curl -XPUT http://$ELASTOC_SRV/_template/$ELASTOC_IDX?pretty -d @wwp_all_grok_mapping.json
else
	echo "pas de reset du template"
fi

/opt/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/wwp_all_grok_final.conf --allow-env
