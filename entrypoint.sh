#!/bin/bash
set -x

echo "Getting Kafka Offset monitor jar"

URL=https://github.com/Morningstar/kafka-offset-monitor/releases/download/0.4.6/KafkaOffsetMonitor-assembly-0.4.6-SNAPSHOT.jar
curl -H "Accept: application/zip" -L $URL -o kafka-offset-monitor.jar

java -cp kafka-offset-monitor.jar  com.quantifind.kafka.offsetapp.OffsetGetterWeb  --offsetStorage kafka --kafkaBrokers $1  --zk $2   --port 8080  --refresh 30.seconds  --retain 3.days   --dbName offsetapp_kafka
