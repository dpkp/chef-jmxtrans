node.set['jmxtrans']['default_queries']['hadoop-datanode'] = [
  {
    "obj" => "hadoop:service=DataNode,name=RpcActivityForPort50020",
    "result_alias" => "DataNodeRpcAcitivity",
    "attr" => [
      "NumOpenConnections",
      "callQueueLen",
      "RpcQueueTimeNumOps",
      "RpcQueueTimeAvgTime",
      "RpcQueueTimeMinTime",
      "RpcQueueTimeMaxTime",
      "RpcProcessingTimeNumOps",
      "RpcProcessingTimeAvgTime",
      "RpcProcessingTimeMinTime",
      "RpcProcessingTimeMaxTime"
    ]
  },
  {
    "obj" => "hadoop:service=DataNode,name=DataNodeActivity-*-50010",
    "result_alias" => "DataNodeActivity",
    "attr" => [
      "bytes_written",
      "reads_from_remote_client",
      "replaceBlockOpNumOps",
      "replaceBlockOpAvgTime",
      "replaceBlockOpMinTime",
      "replaceBlockOpMaxTime",
      "block_verification_failures",
      "blocks_read",
      "heartBeatsNumOps",
      "heartBeatsAvgTime",
      "heartBeatsMinTime",
      "heartBeatsMaxTime",
      "copyBlockOpNumOps",
      "copyBlockOpAvgTime",
      "copyBlockOpMinTime",
      "copyBlockOpMaxTime",
      "blocks_written",
      "readBlockOpNumOps",
      "readBlockOpAvgTime",
      "readBlockOpMinTime",
      "readBlockOpMaxTime",
      "blockChecksumOpNumOps",
      "blockChecksumOpAvgTime",
      "blockChecksumOpMinTime",
      "blockChecksumOpMaxTime",
      "reads_from_local_client",
      "writes_from_remote_client",
      "blocks_verified",
      "blockReportsNumOps",
      "blockReportsAvgTime",
      "blockReportsMinTime",
      "blockReportsMaxTime",
      "writes_from_local_client",
      "blocks_replicated",
      "bytes_read",
      "blocks_removed",
      "writeBlockOpNumOps",
      "writeBlockOpAvgTime",
      "writeBlockOpMinTime",
      "writeBlockOpMaxTime",
      "readMetadataOpNumOps",
      "readMetadataOpAvgTime",
      "readMetadataOpMinTime",
      "readMetadataOpMaxTime"
    ]
  },
  {
    "obj" => "hadoop:service=DataNode,name=FSDatasetState*",
    "result_alias" => "DataNodeFSDatasetState",
    "attr" => [
      "Remaining",
      "Capacity",
      "DfsUsed"
    ]
  }
]
