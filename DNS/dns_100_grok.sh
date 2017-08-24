#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf170808.1735


curl -XDELETE http://10.92.104.200:9200/dns_log_20170817
/opt/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/dns_100_grok.conf




