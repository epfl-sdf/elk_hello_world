#!/bin/bash
# petit script pour redémarrer le binz
#zf170810.1045

#source: 

sudo systemctl restart elasticsearch.service
sudo systemctl restart kibana.service
sudo systemctl restart logstash.service
