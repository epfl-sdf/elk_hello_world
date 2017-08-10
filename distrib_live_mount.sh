#!/bin/bash
#petit script pour monter un fichier de log distant sur le serveur où troune notre logstash
#zf170810.1854

sudo apt-get install sshfs
mkdir -p /home/ubuntu/data-elk/distrib
sshfs ubuntu@sdf-test4wwp-test:/home/ubuntu/credentials /home/ubuntu/data-elk/distrib/



