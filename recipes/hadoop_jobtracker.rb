node.set['jmxtrans']['default_queries']['hadoop-jobtracker'] = [
  {
    "obj" => "hadoop:service=JobTracker,name=JobTrackerInfo",
    "result_alias" => "JobTrackerInfo",
    "attr" => [
      "ThreadCount"
    ]
  },
  {
    "obj" => "hadoop:service=JobTracker,name=RpcActivityForPort8021",
    "result_alias" => "JobTrackerRpcActivity",
    "attr" => [
      "NumOpenConnections",
      "ReceivedBytes",
      "SentBytes",
      "RpcProcessingTimeAvgTime",
      "RpcProcessingTimeMinTime",
      "RpcProcessingTimeMaxTime",
      "RpcProcessingTimeNumOps",
      "RpcQueueTimeAvgTime",
      "RpcQueueTimeMinTime",
      "RpcQueueTimeMaxTime",
      "RpcQueueTimeNumOps",
      "callQueueLen"
    ]
  }
]
