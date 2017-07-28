KafkaEx.create_worker(:streaming_worker)
for message <- KafkaEx.stream("kafka_ex", 0, worker_name: :streaming_worker, auto_commit: false) do
  IO.puts "Got #{inspect message}"
end
