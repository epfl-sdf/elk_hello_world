#!/bin/bash
#Petit script pour installer ELK avec la derniere version
#310817.1556

sudo apt-get -y install jruby

echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | sudo tee -a /etc/apt/sources.list

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
sudo apt-get update
sudo apt-get -y install oracle-java8-installer

sudo apt-get -y install oracle-java8-set-default



wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key ad$
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee$

sudo apt-get update

sudo apt-get -y install elasticsearch

sudo update-rc.d elasticsearch defaults 95 10
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable elasticsearch.service

sudo apt-get -y install kibana

sudo update-rc.d kibana defaults 95 10
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable kibana.service

sudo apt-get -y install logstash

THEIP=$(/sbin/ifconfig ens18 | /bin/grep "inet ad" | /usr/bin/cut -f2 -d: | /usr/bin/awk '{print $1}')

echo "network.host: "$THEIP | sudo tee -a /etc/elasticsearch/elasticsearch.yml
echo "network.bind_host: "$THEIP | sudo tee -a /etc/elasticsearch/elasticsearch.yml
sudo service elasticsearch restart


echo "server.host: "$THEIP | sudo tee -a /opt/kibana/config/kibana.yml
echo "elasticsearch.url: http://"$THEIP":9200" | sudo tee -a /opt/kibana/config/kibana.yml
sudo service kibana restart

sudo /usr/share/logstash/bin/logstash-plugin install logstash-filter-elasticsearch
sudo chmod -R 777 /usr/share/logstash/data
