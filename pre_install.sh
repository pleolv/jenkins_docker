#!/bin/bash

sudo yum install -y yum-utils

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo


yum -y install docker-ce
sudo systemctl start docker
sudo systemctl enable docker

firewall-cmd --zone=public --add-port=8088/tcp --permanent
firewall-cmd --reload
