#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf170808.1735,zf170817.1648



#export LS_HEAP_SIZE="200m"
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
        echo "chargement de l'hote $1 et de l'index $2"
        curl -XDELETE $ELASTOC_SRV/$ELASTOC_IDX
fi

# Test si reset ou non
if [ "$3" == "reset" ] ; then
        echo " reset du template"
        curl -XDELETE http://$ELASTOC_SRV/_template/$ELASTOC_IDX
        curl -XPUT http://$ELASTOC_SRV/_template/$ELASTOC_IDX?pretty -d @wwp_all_grok_mapping.json
else
        echo " pas de reset du template"
fi

/usr/share/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/distrib/distrib_live_csv_youssef.conf&

sleep 60

r = "no"

while [r != "e"]
 do
  read -p "Press e to continue with elasticsearch... " -n 1 -s
 done

watch -n 300 /usr/share/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/distrib/distrib_live_elastic_youssef.conf --path.data /home/ubuntu/elk_hello_world/distrib/data
