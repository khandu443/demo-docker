#!/bin/bash
wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.13.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
 yum -y install java-1.8.0-openjdk
 yum install wget -y
 java -version
 wget https://mirrors.estointernet.in/apache/kafka/2.7.0/kafka_2.13-2.7.0.tgz
 tar -xzf kafka_2.13-2.7.0.tgz 
 ln -s kafka_2.13-2.7.0 kafka
echo "export PATH=$PATH:/root/kafka_2.13-2.7.0/bin" >> ~/.bash_profile
source ~/.bash_profile
wget https://github.com/nicolas-van/multirun/releases/download/1.0.0/multirun-glibc-1.0.0.tar.gz
tar -zxvf multirun-glibc-1.0.0.tar.gz && \
mv multirun /bin
rm multirun-glibc-1.0.0.tar.gz
