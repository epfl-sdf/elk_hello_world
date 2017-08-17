#!/bin/bash
# petit script pour redémarrer kibana à la mano en espérant utiliser moins de RAM ;-(
#zf170817.1114

#source: https://github.com/elastic/kibana/issues/9006


sudo systemctl stop kibana.service
sudo NODE_OPTIONS="--max-old-space-size=100" /opt/kibana/bin/kibana &


