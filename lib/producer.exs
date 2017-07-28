producer_fn = fn ->
  helper_fun = fn(fun) ->
    # KafkaEx.produce("kafka_ex", 0, (inspect :os.timestamp))
    KafkaEx.produce("kafka_ex", 0, "this is pasta")
    :timer.sleep(500)
    fun.(fun)
  end

  helper_fun.(helper_fun)
end

producer_fn.()
