# TestKafka



run `spotify/kafka`

```
docker run -p 2181:2181 -p 9092:9092 --env ADVERTISED_HOST=127.0.0.1 --env ADVERTISED_PORT=9092 spotify/kafka
```


#### Producer
`$ mix run lib/producer.exs`

#### Consumer
`$ mix run lib/consumer.exs`

#### Metadata
`$ mix run lib/metadata.exs`

#### Offset
`$ mix run lib/offset.exs`

#### Streaming
`$ mix run lib/stream.exs`
