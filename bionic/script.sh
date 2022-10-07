#!/bin/bash

apt update && \
apt install -y nginx && service nginx restart
apt install -y mysql-server-5.7 && service mysql restart
mysql -e "create user 'phpuser'@'%' identified by 'pass';"