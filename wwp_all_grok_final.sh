#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf170808.1735

export LS_HEAP_SIZE="80m"
curl -XDELETE http://guillaume-1:9200/_template/wwp_log_20170816?pretty

/opt/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/wwp_all_grok_final.conf
curl -XPUT http://guillaume-1:9200/_template/wwp_log_20170817?pretty -d @wwp_all_grok_mapping.json

