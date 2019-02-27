RabbitMQ with Management and STOMP Plugin
=========================================

```
$ docker pull propersoft/docker-rabbitmq
$ docker-compose up -d
```

You can then go to `http://localhost:15672` or `http://host-ip:15672` in a browser,
login with the username and password of `proper` / `proper`.

Use port `61613` for STOMP connections.

单节点部署

在rabbitmq_single中执行
```
$ docker-compose up -d
```

镜像集群部署

在rabbitmq_images中执行
```
$ ./docker_setup.sh
```


