#!/bin/bash
# petit script pour installer le binz
#zf170817.1758

#source: https://www.supinfo.com/articles/single/2498-elk-installation-configuration

sudo apt-get -y install jruby

echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | sudo tee -a /etc/apt/sources.list

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
sudo apt-get update
sudo apt-get -y install oracle-java8-installer

sudo apt-get -y install oracle-java8-set-default

wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add
echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list
sudo apt-get update
sudo apt-get -y install elasticsearch

sudo update-rc.d elasticsearch defaults 95 10
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable elasticsearch.service

echo "deb http://packages.elastic.co/logstash/2.3/debian stable main" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get  -y install logstash

sudo /opt/logstash/bin/logstash-plugin install logstash-input-elasticsearch
sudo /opt/logstash/bin/logstash-plugin install logstash-filter-elasticsearch
#ATTENTION c'est vraiment pas bien ce que je fais ICI, mais c'est juste en attendant la nouvelle version ! zf170817.1758
sudo chmod -R 777 /opt/logstash/

echo "deb http://packages.elastic.co/kibana/4.5/debian stable main" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get -y install kibana

sudo update-rc.d kibana defaults 95 10
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable kibana.service

THEIP=$(/sbin/ifconfig ens18 | /bin/grep "inet ad" | /usr/bin/cut -f2 -d: | /usr/bin/awk '{print $1}')

echo "network.host: "$THEIP | sudo tee -a /etc/elasticsearch/elasticsearch.yml
echo "network.bind_host: "$THEIP | sudo tee -a /etc/elasticsearch/elasticsearch.yml
sudo service elasticsearch restart


echo "server.host: "$THEIP | sudo tee -a /opt/kibana/config/kibana.yml
echo "elasticsearch.url: http://"$THEIP":9200" | sudo tee -a /opt/kibana/config/kibana.yml
sudo service kibana restart

