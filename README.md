RabbitMQ with Management and STOMP Plugin
=========================================

```
$ docker pull propersoft/docker-rabbitmq
$ docker-compose up -d
```

You can then go to `http://localhost:15672` or `http://host-ip:15672` in a browser,
login with the username and password of `proper` / `proper`.

Use port `61613` for STOMP connections.

镜像集群部署

在haproxy和rabbitmq_images中分别执行
```
$ docker-compose up -d
```

需要几个注意事项：
容器的ip和rabbitmq名称需要添加到hosts中
.erlang.cookie 需要保持一致，以便进行验证

```
$ rabbitmqctl stop_app
$ rabbitmqctl join_cluster XXXXXX
$ rabbitmqctl start_app
$ rabbitmqctl cluster_status
$ rabbitmqctl set_policy  ha-all “hello” ‘{“ha-mode”:”all”}’
```
