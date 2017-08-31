#!/bin/bash
# petit script pour redemarrer kibana a la main
#310817.1558

#source: https://github.com/elastic/kibana/issues/9006

sudo systemctl stop kibana.service
sudo NODE_OPTIONS="--max-old-space-size=100" /opt/kibana/bin/kibana &


