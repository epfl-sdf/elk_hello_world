#!/bin/bash
#petit script à lancer pour que cela tourne !
#zf170808.1735

export LS_HEAP_SIZE="100m"
<<<<<<< HEAD
<<<<<<< HEAD
curl -XDELETE http://10.92.104.200:9200/*
=======
curl -XDELETE http://10.92.104.198:9200/*
>>>>>>> f092cf347b3d9a392bb38b2b05490f919724568f
=======
curl -XDELETE http://10.92.104.200:9200/*
>>>>>>> eb94f37f52efb0b9075f057af44e57b5fefa4b98
/opt/logstash/bin/logstash -f /home/ubuntu/elk_hello_world/wwp_1000.conf
