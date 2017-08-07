#!/bin/bash
#petit script à lancer pour ue cela tourne !
#zf170807.1613

curl -XPUT http://sdf-elk-dev:9200/zuzu20170807.1631
/opt/logstash/bin/logstash -f test.conf




