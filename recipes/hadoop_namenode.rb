node.set['jmxtrans']['default_queries']['hadoop-namenode'] = [
  {
    "obj" => "hadoop:service=NameNode,name=FSNamesystemState",
    "result_alias" => "NameNodeFSNamesystemState",
    "attr" => [
      "CapacityTotal",
      "CapacityUsed",
      "CapacityRemaining",
      "TotalLoad",
      "BlocksTotal",
      "FilesTotal",
      "PendingReplicationBlocks",
      "UnderReplicatedBlocks",
      "ScheduledReplicationBlocks"
    ]
  },
  {
    "obj" => "hadoop:service=NameNode,name=NameNodeActivity",
    "result_alias" => "NameNodeActivity",
    "attr" => [
      "AddBlockOps",
      "fsImageLoadTime",
      "FilesRenamed",
      "SyncsNumOps",
      "SyncsAvgTime",
      "SyncsMinTime",
      "SyncsMaxTime",
      "JournalTransactionsBatchedInSync",
      "FileInfoOps",
      "CreateFileOps",
      "GetListingOps",
      "TransactionsNumOps",
      "TransactionsAvgTime",
      "TransactionsMinTime",
      "TransactionsMaxTime",
      "GetBlockLocations",
      "BlocksCorrupted",
      "FilesInGetListingOps",
      "SafemodeTime",
      "FilesCreated",
      "FilesAppended",
      "DeleteFileOps",
      "blockReportNumOps",
      "blockReportAvgTime",
      "blockReportMinTime",
      "blockReportMaxTime"
    ]
  },
  {
    "obj" => "hadoop:service=NameNode,name=NameNodeInfo",
    "result_alias" => "NameNodeInfo",
    "attr" => [
      "Threads",
      "Used",
      "Total",
      "Free",
      "NonDfsUsedSpace",
      "PercentUsed",
      "PercentRemaining",
      "TotalBlocks",
      "TotalFiles"
    ]
  },
  {
    "obj" => "hadoop:service=NameNode,name=RpcActivityForPort8020",
    "result_alias" => "NameNodeRpcActivity",
    "attr" => [
      "rpcAuthorizationSuccesses",
      "rpcAuthorizationFailures",
      "SentBytes",
      "ReceivedBytes",
      "NumOpenConnections",
      "callQueueLen",
      "rpcAuthenticationSuccesses",
      "rpcAuthenticationFailures",
      "RpcQueueTimeNumOps",
      "RpcQueueTimeAvgTime",
      "RpcQueueTimeMinTime",
      "RpcQueueTimeMaxTime",
      "RpcProcessingTimeNumOps",
      "RpcProcessingTimeAvgTime",
      "RpcProcessingTimeMinTime",
      "RpcProcessingTimeMaxTime"
    ]
  }
]
