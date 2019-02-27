#!/bin/bash

set -x
echo "SFSYARVMJCVAEEPEMZUL" > /var/lib/rabbitmq/.erlang.cookie
echo "vm_memory_high_watermark.absolute = 1GB" > /etc/rabbitmq/rabbitmq.conf
chmod 600 /var/lib/rabbitmq/.erlang.cookie
