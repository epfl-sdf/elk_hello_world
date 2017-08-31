#!/bin/bash
# petit script pour redemarrer elk
#310817.1559

sudo systemctl restart elasticsearch.service
sudo systemctl restart kibana.service
sudo systemctl restart logstash.service
