node.set['jmxtrans']['default_queries']['zookeeper'] = [
  {
    "obj" => "org.apache.ZooKeeperService:name0=ReplicatedServer_id*",
    "attr" => [
      "QuorumSize"
    ]
  },
  {
    "obj" => "org.apache.ZooKeeperService:name0=ReplicatedServer_id*,name1=replica*,name2=*",
    "attr" => [
      "MaxClientCnxnsPerHost",
      "MaxRequestLatency",
      "AvgRequestLatency",
      "MinRequestLatency",
      "MaxSessionTimeout",
      "MinSessionTimeout",
      "OutstandingRequests",
      "PacketsReceived",
      "PacketsSent",
      "PendingRevalidationCount",
      "TickTime"
    ]
  },
  {
    "obj" => "org.apache.ZooKeeperService:name0=ReplicatedServer_id*,name1=replica*,name2=*,name3=InMemoryDataTree",
    "attr" => [
      "NodeCount",
      "WatchCount"
    ]
  },
  {
    "obj" => "org.apache.ZooKeeperService:name0=ReplicatedServer_id*,name1=replica*,name2=*,name3=Connections,name4=*,name5=*",
    "resultAlias" => "Clients",
    "attr" => [
      "AvgLatency",
      "LastLatency",
      "MaxLatency",
      "MinLatency",
      "OutstandingRequests",
      "PacketsReceived",
      "PacketsSent"
    ]
  }
]
