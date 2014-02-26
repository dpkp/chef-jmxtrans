node.set['jmxtrans']['default_queries']['kafka-0.7'] = [
  {
    "obj" => "kafka:type=kafka.SocketServerStats",
    "result_alias" => "SocketServerStats",
    "attr" => [
      "ProduceRequestsPerSecond",
      "FetchRequestsPerSecond",
      "TotalProduceRequestMs",
      "TotalFetchRequestMs",
      "TotalBytesWritten",
      "TotalBytesRead",
      "NumProduceRequests",
      "NumFetchRequests",
      "BytesWrittenPerSecond",
      "BytesReadPerSecond",
      "MaxFetchRequestMs",
      "AvgFetchRequestMs",
      "MaxProduceRequestMs",
      "AvgProduceRequestMs"
    ]
  },
  {
    "obj" => "kafka:type=kafka.LogFlushStats",
    "result_alias" => "LogFlushStats",
    "attr" => [
      "FlushesPerSecond",
      "MaxFlushMs",
      "TotalFlushMs",
      "AvgFlushMs",
      "NumFlushes"
    ]
  }
]
