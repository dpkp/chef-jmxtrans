default['jmxtrans']['install_prefix'] = '/opt'
default['jmxtrans']['home'] = "#{default['jmxtrans']['install_prefix']}/jmxtrans"
default['jmxtrans']['log_dir'] = '/var/log/jmxtrans'
default['jmxtrans']['user'] = 'jmxtrans'
default['jmxtrans']['url'] = 'https://github.com/downloads/jmxtrans/jmxtrans/jmxtrans-20121016-151320-36564abc7e.zip'
default['jmxtrans']['checksum'] = '4a1e705c0ca69bd040bbc5523f26476a671ac300ba52cf1fa864e7a55783d9ac'
default['jmxtrans']['heap_size'] = '512'
default['jmxtrans']['run_interval'] = '60'
default['jmxtrans']['log_level'] = 'debug'
default['jmxtrans']['graphite']['host'] = 'graphite'
default['jmxtrans']['graphite']['port'] = '2003'

default['jmxtrans']['servers'] = []
default['jmxtrans']['root_prefix'] = "jmx"
default['jmxtrans']['default_queries'] = {
  'cassandra' => [
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
  ],
  'jvm' => [
            {
              "result_alias" => "memory",
              "obj" => "java.lang:type=Memory",
              "attr" => [ "HeapMemoryUsage", "NonHeapMemoryUsage" ]
            },
            {
              "result_alias" => "memorypool",
              "obj" => "java.lang:type=MemoryPool,name=*",
              "attr" => [ "Usage" ]
            },
            {
              "result_alias" => "gc",
              "obj" => "java.lang:type=GarbageCollector,name=*",
              "attr" => [ "CollectionCount", "CollectionTime" ]
            },
            {
            "result_alias" => "threads",
            "obj" => "java.lang:type=Threading",
            "attr" => [
                       "DaemonThreadCount",
                       "PeakThreadCount",
                       "ThreadCount",
                       "TotalStartedThreadCount"
                      ]
            }
           ],
  'tomcat' => [
               {
                 'obj' => "Catalina:type=ThreadPool,name=*",
                 'result_alias' => "connectors",
                 'attr' => [ "currentThreadCount", "currentThreadsBusy", "" ]
               },
               {
                 'obj' => "Catalina:type=GlobalRequestProcessor,name=*",
                 'result_alias' => "requests",
                 'attr' => [ "bytesReceived", "bytesSent", "errorCount", "maxTime", "processingTime", "requestCount" ]
               },
               {  "obj" => "Catalina:type=DataSource,class=javax.sql.DataSource,name=*",
                 "result_alias" => "datasources",
                 "attr" => [ "NumActive", "NumIdle", "NumQueryThreads" ]
               }
              ]
}

