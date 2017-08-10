#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf170808.1735,zf170809.1632


curl -XDELETE http://sdf-elk-dev:9200/zuzu20170809.1629
/opt/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/distrib_live_csv.conf




