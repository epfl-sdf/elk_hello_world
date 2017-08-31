#!/bin/bash
#Petit scrip pour mettre a jour elk
#310817.1602

#source: https://www.rosehosting.com/blog/install-and-configure-the-elk-stack-on-ubuntu-16-04/

# command to remove repository
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list

sudo apt-get -y update
sudo apt-get -y upgrade

#sudo sed -i -e 's/Xms2g/Xms300m/g' /etc/elasticsearch/jvm.options
#sudo sed -i -e 's/Xmx2g/Xmx300m/g' /etc/elasticsearch/jvm.options

#a faire toi meme
#-Xms300m
#-Xmx300m

#sudo nano /etc/elasticsearch/jvm.options

sudo ./usr/share/logstash/bin/logstash-plugin install logstash-filter-elasticsearch
sudo chmod -R 777 /usr/share/logstash/data
