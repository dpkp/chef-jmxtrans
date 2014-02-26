node.set['jmxtrans']['default_queries']['jvm'] = [
  {
    "result_alias" => "memory",
    "obj" => "java.lang:type=Memory",
    "attr" => [
      "HeapMemoryUsage",
      "NonHeapMemoryUsage"
    ]
  },
  {
    "result_alias" => "memorypool",
    "obj" => "java.lang:type=MemoryPool,name=*",
    "attr" => [
      "Usage"
    ]
  },
  {
    "result_alias" => "gc",
    "obj" => "java.lang:type=GarbageCollector,name=*",
    "attr" => [
      "CollectionCount",
      "CollectionTime"
    ]
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
]
