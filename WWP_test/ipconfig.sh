
THEIP=$(/sbin/ifconfig ens18 | /bin/grep "inet ad" | /usr/bin/cut -f2 -d: | /usr/bin/awk '{print $1}')

echo "network.host: "$THEIP | sudo tee -a /etc/elasticsearch/elasticsearch.yml
echo "network.bind_host: "$THEIP | sudo tee -a /etc/elasticsearch/elasticsearch.yml
sudo service elasticsearch restart


echo "server.host: "$THEIP | sudo tee -a /etc/kibana/kibana.yml
echo "elasticsearch.url: http://"$THEIP":9200" | sudo tee -a /etc/kibana/kibana.yml
sudo service kibana restart

