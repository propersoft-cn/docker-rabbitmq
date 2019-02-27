#!/bin/bash

rabbitmqctl stop_app
sleep 30
rabbitmqctl join_cluster rabbit@rabbitmq2
sleep 30
rabbitmqctl start_app
rabbitmqctl set_policy  ha-all "hello" '{"ha-mode":"all"}'
