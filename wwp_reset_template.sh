#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf170808.1735

#sources: https://www.elastic.co/blog/logstash_lesson_elasticsearch_mapping

export LS_HEAP_SIZE="80m"
curl -XDELETE http://louis-1:9200/_template/wwp_log_20170817?pretty
curl -XPUT http://louis-1:9200/_template/wwp_log_20170817?pretty -d @wwp_all_grok_mapping.json

