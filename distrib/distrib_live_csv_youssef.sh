#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf170808.1735,zf170817.1648

export LS_HEAP_SIZE="80m"
export ELASTOC_SRV="sdf-elk-dev"
export ELASTOC_IDX="distrib.170817.1647"

curl -XDELETE http://sdf-elk-dev:9200/distrib.170817.1647

/opt/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/distrib/distrib_live_csv_youssef.conf&

exit

while [ 1 ];
do 
    /opt/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/distrib/distrib_live_elastic_youssef.conf
    sleep 30
done




