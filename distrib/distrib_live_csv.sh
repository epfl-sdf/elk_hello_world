#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf170808.1735,zf170809.1632

export LS_HEAP_SIZE="80m"
curl -XDELETE http://sdf-elk-dev:9200/distrib.170810.1725
/opt/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/distrib/distrib_live_csv.conf




