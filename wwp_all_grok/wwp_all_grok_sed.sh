#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf170808.1735

export LS_HEAP_SIZE="80m"

# Test des arguments
if [ -z "$1" ] ; then
	echo "ERREUR: pas assez d'argument, preciser l'hote"
	exit
else
	echo "changement de l'hote"
	
	sed -i "s#hosts => 'http://.*#hosts => 'http://$1:9200'#" wwp_all_grok_sedi.conf
	curl -XDELETE http://$1:9200/wwp_log_20170817
	
fi

# Test si reset ou non
if [ "$2" == "reset" ] ; then
	echo "reset du template"
	curl -XDELETE http://$1:9200/_template/wwp_log_20170817
	curl -XPUT http://$1:9200/_template/wwp_log_20170817?pretty -d @wwp_all_grok_mapping.json
else
	echo "pas de reset du template"
fi

/opt/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/wwp_all_grok_sedi.conf
