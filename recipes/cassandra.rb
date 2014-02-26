node.set['jmxtrans']['default_queries']['cassandra'] = [
  {
    "obj" => "org.apache.cassandra.db:type=Commitlog",
    "result_alias" => "Commitlog",
    "attr" => [
      "CompletedTasks",
      "PendingTasks",
      "TotalCommitlogSize"
    ]
  },
  {
    "obj" => "org.apache.cassandra.db:type=CompactionManager",
    "result_alias" => "CompactionManager",
    "attr" => [
      "PendingTasks",
      "CompletedTasks"
    ]
  },
  {
    "obj" => "org.apache.cassandra.db:type=StorageProxy",
    "result_alias" => "StorageProxy",
    "attr" => [
      "HintsInProgress",
      "RangeOperations",
      "ReadOperations",
      "WriteOperations",
      "RecentRangeLatencyMicros",
      "RecentWriteLatencyMicros",
      "RecentReadLatencyMicros",
      "TotalHints",
      "TotalRangeLatencyMicros",
      "TotalWriteLatencyMicros",
      "TotalReadLatencyMicros"
    ]
  },
  {
    "obj" => "org.apache.cassandra.db:type=StorageService",
    "result_alias" => "StorageService",
    "attr" => [
      "ExceptionCount",
      "Load"
    ]
  },
  {
    "obj" => "org.apache.cassandra.net:type=MessagingService",
    "result_alias" => "MessagingService",
    "attr" => [
      "RecentTotalTimouts",
      "TotalTimeouts"
    ]
  },
  {
    "obj" => "org.apache.cassandra.request:type=MutationStage",
    "result_alias" => "Stage/MutationStage",
    "attr" => [
      "ActiveCount",
      "CompletedTasks",
      "CurrentlyBlockedTasks",
      "PendingTasks",
      "TotalBlockedTasks"
    ]
  },
  {
    "obj" => "org.apache.cassandra.request:type=ReadRepairStage",
    "result_alias" => "Stage/ReadRepairStage",
    "attr" => [
      "ActiveCount",
      "CompletedTasks",
      "CurrentlyBlockedTasks",
      "PendingTasks",
      "TotalBlockedTasks"
    ]
  },
  {
    "obj" => "org.apache.cassandra.request:type=ReadStage",
    "result_alias" => "Stage/ReadStage",
    "attr" => [
      "ActiveCount",
      "CompletedTasks",
      "CurrentlyBlockedTasks",
      "PendingTasks",
      "TotalBlockedTasks"
    ]
  },
  {
    "obj" => "org.apache.cassandra.request:type=ReplicateOnWriteStage",
    "result_alias" => "Stage/ReplicateOnWriteStage",
    "attr" => [
      "ActiveCount",
      "CompletedTasks",
      "CurrentlyBlockedTasks",
      "PendingTasks",
      "TotalBlockedTasks"
    ]
  },
  {
    "obj" => "org.apache.cassandra.request:type=RequestResponseStage",
    "result_alias" => "Stage/RequestResponseStage",
    "attr" => [
      "ActiveCount",
      "CompletedTasks",
      "CurrentlyBlockedTasks",
      "PendingTasks",
      "TotalBlockedTasks"
    ]
  },
  {
    "obj" => "org.apache.cassandra.internal:type=AntiEntropySessions",
    "result_alias" => "Internal/AntiEntropySessions",
    "attr" => [
      "ActiveCount",
      "CompletedTasks",
      "CurrentlyBlockedTasks",
      "PendingTasks",
      "TotalBlockedTasks"
    ]
  },
  {
    "obj" => "org.apache.cassandra.internal:type=AntiEntropyStage",
    "result_alias" => "Internal/AntiEntropyStage",
    "attr" => [
      "ActiveCount",
      "CompletedTasks",
      "CurrentlyBlockedTasks",
      "PendingTasks",
      "TotalBlockedTasks"
    ]
  },
  {
    "obj" => "org.apache.cassandra.internal:type=FlushWriter",
    "result_alias" => "Internal/FlushWriter",
    "attr" => [
      "ActiveCount",
      "CompletedTasks",
      "CurrentlyBlockedTasks",
      "PendingTasks",
      "TotalBlockedTasks"
    ]
  },
  {
    "obj" => "org.apache.cassandra.internal:type=GossipStage",
    "result_alias" => "Internal/GossipStage",
    "attr" => [
      "ActiveCount",
      "CompletedTasks",
      "CurrentlyBlockedTasks",
      "PendingTasks",
      "TotalBlockedTasks"
    ]
  },
  {
    "obj" => "org.apache.cassandra.internal:type=HintedHandoff",
    "result_alias" => "Internal/HintedHandoff",
    "attr" => [
      "ActiveCount",
      "CompletedTasks",
      "CurrentlyBlockedTasks",
      "PendingTasks",
      "TotalBlockedTasks"
    ]
  },
  {
    "obj" => "org.apache.cassandra.internal:type=InternalResponseStage",
    "result_alias" => "Internal/InternalResponseStage",
    "attr" => [
      "ActiveCount",
      "CompletedTasks",
      "CurrentlyBlockedTasks",
      "PendingTasks",
      "TotalBlockedTasks"
    ]
  },
  {
    "obj" => "org.apache.cassandra.internal:type=MemtablePostFlusher",
    "result_alias" => "Internal/MemtablePostFlusher",
    "attr" => [
      "ActiveCount",
      "CompletedTasks",
      "CurrentlyBlockedTasks",
      "PendingTasks",
      "TotalBlockedTasks"
    ]
  },
  {
    "obj" => "org.apache.cassandra.internal:type=MigrationStage",
    "result_alias" => "Internal/MigrationStage",
    "attr" => [
      "ActiveCount",
      "CompletedTasks",
      "CurrentlyBlockedTasks",
      "PendingTasks",
      "TotalBlockedTasks"
    ]
  },
  {
    "obj" => "org.apache.cassandra.internal:type=MiscStage",
    "result_alias" => "Internal/MiscStage",
    "attr" => [
      "ActiveCount",
      "CompletedTasks",
      "CurrentlyBlockedTasks",
      "PendingTasks",
      "TotalBlockedTasks"
    ]
  },
  {
    "obj" => "org.apache.cassandra.internal:type=StreamStage",
    "result_alias" => "Internal/StreamStage",
    "attr" => [
      "ActiveCount",
      "CompletedTasks",
      "CurrentlyBlockedTasks",
      "PendingTasks",
      "TotalBlockedTasks"
    ]
  }
]

include_recipe jmxtrans
