#!/bin/bash

cd /opt/docker/rabbitmq/
docker-compose up -d
docker exec -it rabbitmq1 /root/rabbitmq1_setup.sh
docker exec -it rabbitmq2 /root/rabbitmq2_setup.sh
docker restart rabbitmq1
docker restart rabbitmq2
docker exec -it rabbitmq1 /root/rabbitmq1_cluster.sh

