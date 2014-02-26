node.set['jmxtrans']['default_queries']['tomcat'] = [
  {
    'obj' => "Catalina:type=ThreadPool,name=*",
    'result_alias' => "connectors",
    'attr' => [
      "currentThreadCount",
      "currentThreadsBusy"
    ]
  },
  {
    'obj' => "Catalina:type=GlobalRequestProcessor,name=*",
    'result_alias' => "requests",
    'attr' => [
      "bytesReceived",
      "bytesSent",
      "errorCount",
      "maxTime",
      "processingTime",
      "requestCount"
    ]
  },
  {
    "obj" => "Catalina:type=DataSource,class=javax.sql.DataSource,name=*",
    "result_alias" => "datasources",
    "attr" => [
      "NumActive",
      "NumIdle",
      "NumQueryThreads"
    ]
  }
]
