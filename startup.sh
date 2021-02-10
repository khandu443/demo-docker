#!/bin/bash
nohup zookeeper-server-start.sh -daemon /root/kafka/config/zookeeper.properties &
nohup kafka-server-start.sh -daemon /root/kafka/config/server.properties &
kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic number
sh /opt/start.sh
