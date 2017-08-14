#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf170808.1735,zf170809.1632



curl -XDELETE http://10.92.104.203:9200/*
/opt/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/distrib/distrib_100_csv_youssef_4.conf

/opt/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/distrib/distrib_100_csv_youssef_2.conf




