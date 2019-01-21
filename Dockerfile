FROM rabbitmq:3.7.8-management-alpine

RUN rabbitmq-plugins enable --offline rabbitmq_stomp
