#!/bin/bash
#petit script a lancer pour que cela tourne !
#310817.1732

export LS_HEAP_SIZE="100m"
curl -XDELETE http://10.92.104.200:9200/*
/opt/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/wwp_1000_grok.conf
