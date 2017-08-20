# command to remove repository
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list
sudo apt-get -y update
sudo apt-get -y upgrade
cd ../
sed -i -e 's/Xms2g/Xms300m/g' /etc/elasticsearch/jvm.options
sed -i -e 's/Xmx2g/Xmx300m/g' /etc/elasticsearch/jvm.options


#a faire toi meme
#-Xms300m
#-Xmx300m


sudo nano /etc/elasticsearch/jvm.options

