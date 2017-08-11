#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf170808.1735


curl -XDELETE http://10.92.104.200:9200/*
/opt/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/dns_100_grok_v2.conf




