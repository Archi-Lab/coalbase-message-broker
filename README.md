# coalbase-message-broker
A setup for Kafka message broker based on [confluent](https://github.com/confluentinc/cp-docker-images)

## Deployment
To start the cluster run following command:
```bash
docker-compose up
```
Alternatively docker stack can be used.

## Environment Variables
### Kafka
The following environment variables are used:
* *KAFKA_BROKER_ID* The unique id for each kafka instance
* *KAFKA_ZOOKEEPER_CONNECT*: List of all Zookeeper instances with client port
* *KAFKA_ADVERTISED_LISTENERS*: Listener to publish for clients (default: INTERNAL://{service_name}:9092)
* *KAFKA_INTER_BROKER_LISTENER_NAME* : Name of listener to be used (default: INTERNAL)
* *KAFKA_LISTENER_SECURITY_PROTOCOL_MAP* : Map between listener an security protocols
* *KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR* : Replication factor for offset topic (default: 1)
Longer explanations can be found at the [Kafka documentation](https://kafka.apache.org/documentation/)

### Zookeeper
The following environment variables are used:
* *ZOOKEEPER_SERVER_ID* The unique id for each zookeeper instance
* *ZOOKEEPER_CLIENT_PORT* Set the client port (default: 2181)
* *ZOOKEEPER_TICK_TIME* Set the length of a tick, which is base for heartbeats and timeouts (default: 2000 ms)
* *ZOOKEEPER_INIT_LIMIT* Amount of time to allow followers to connect (default: 5 ticks)
* *ZOOKEEPER_SYNC_LIMIT* Amount of time to allow followers to sync (default: 2 ticks)
* *ZOOKEEPER_SERVERS* List of all Zookeeper instances with ports
Longer explanations can be found at the [zookeeper documentation](https://zookeeper.apache.org/doc/r3.4.2/zookeeperAdmin.html)

## License
The project is licensed under the Apache 2 license.
