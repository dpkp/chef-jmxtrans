node.set['jmxtrans']['default_queries']['hadoop-tasktracker'] = [
  {
    "obj"=> "hadoop:service=TaskTracker,name=RpcActivityForPort*",
    "result_alias" => "TaskTrackerRpcActivity",
    "attr"=> [
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
