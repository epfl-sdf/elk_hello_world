#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf170808.1735

export LS_HEAP_SIZE="80m"
<<<<<<< HEAD
curl -XDELETE http://10.92.104.198:9200/*
/opt/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/wwp_all.conf
=======
curl -XDELETE http://10.92.104.200:9200/wwp_log_%{+YYYY.MM.dd}
/opt/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/wwp_all_grok.conf
>>>>>>> 032e4aa324a8a796d96d7094039ac00933211785
