#!/bin/bash

echo "* Add hosts ..."
echo "192.168.56.10 docker.do1.lab docker" >> /etc/hosts

echo "* Install Additional Packages ..."
dnf install -y jq tree git nano

echo "* Firewall - open port 8080 ..."
firewall-cmd --add-port=8080/tcp --permanent
firewall-cmd --reload
