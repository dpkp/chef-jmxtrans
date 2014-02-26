node.set['jmxtrans']['default_queries']['kafka'] = [
  {
    'obj' => %q{\"kafka.server\":type=\"BrokerTopicMetrics\",name=*},
    'result_alias' => 'kafka.server.BrokerTopicMetrics',
    'attr' => [
      'Count',
      'FifteenMinuteRate',
      'FiveMinuteRate',
      'MeanRate',
      'OneMinuteRate',
    ]
  },
  {
    'obj' => %q{\"kafka.network\":type=\"RequestMetrics\",name=\"*-RequestsPerSec\"},
    'result_alias' => 'kafka.network.RequestMetrics',
    'attr' => [
      'Count',
      'FifteenMinuteRate',
      'FiveMinuteRate',
      'MeanRate',
      'OneMinuteRate',
    ]
  },
  {
    'obj' => %q{\"kafka.log\":type=\"LogFlushStats\",name=\"LogFlushRateAndTimeMs\"},
    'result_alias' => 'kafka.network.LogFlushStats.LogFlush',
    'attr' => [
      'Count',
      'FifteenMinuteRate',
      'FiveMinuteRate',
      'MeanRate',
      'OneMinuteRate',
    ]
  },
  {
    'obj' => %q{\"kafka.server\":type=\"ReplicaManager\",name=\"UnderReplicatedPartitions\"},
    'result_alias' => 'kafka.server.ReplicaManager.UnderReplicatedPartitions',
    'attr' => [ 'Value' ],
  },
  {
    'obj' => %q{\"kafka.server\":type=\"ReplicaManager\",name=\"PartitionCount\"},
    'result_alias' => 'kafka.server.ReplicaManager.PartitionCount',
    'attr' => [ 'Value' ],
  },
  {
    'obj' => %q{\"kafka.server\":type=\"ReplicaManager\",name=\"LeaderCount\"},
    'result_alias' => 'kafka.server.ReplicaManager.LeaderCount',
    'attr' => [ 'Value' ],
  },
  {
    'obj' => %q{\"kafka.server\":type=\"ReplicaManager\",name=\"ISRShrinksPerSec\"},
    'result_alias' => 'kafka.server.ReplicaManager.ISRShrinks',
    'attr' => [
      'Count',
      'FifteenMinuteRate',
      'FiveMinuteRate',
      'MeanRate',
      'OneMinuteRate',
    ],
  },
  {
    'obj' => %q{\"kafka.server\":type=\"ReplicaManager\",name=\"ISRExpandsPerSec\"},
    'result_alias' => 'kafka.server.ReplicaManager.ISRExpands',
    'attr' => [
      'Count',
      'FifteenMinuteRate',
      'FiveMinuteRate',
      'MeanRate',
      'OneMinuteRate',
    ],
  },
  {
    'obj' => %q{\"kafka.server\":type=\"ReplicaFetchManager\",name=\"*\"},
    'result_alias' => 'kafka.server.ReplicaFetchManager',
    'attr' => [ 'Value' ],
  },
  {
    'obj' => %q{\"kafka.server\":type=\"ProducerRequestPurgatory\",name=\"*\"},
    'result_alias' => 'kafka.server.ProducerRequestPurgatory',
    'attr' => [ 'Value' ],
  },
  {
    'obj' => %q{\"kafka.server\":type=\"FetchRequestPurgatory\",name=\"*\"},
    'result_alias' => 'kafka.server.FetchRequestPurgatory',
    'attr' => [ 'Value' ],
  },
  {
    'obj' => %q{\"kafka.controller\":type=\"KafkaController\",name=\"*\"},
    'result_alias' => 'kafka.controller.KafkaController',
    'attr' => [ 'Value' ],
  },
  {
    'obj' => %q{\"kafka.controller\":type=\"ControllerStats\",name=\"LeaderElectionRateAndTimeMs\"},
    'result_alias' => 'kafka.controller.ControllerStats.LeaderElectionRateAndTimeMs',
    'attr' => [
      'Count',
      'FifteenMinuteRate',
      'FiveMinuteRate',
      'MeanRate',
      'OneMinuteRate',
    ],
  },
  {
    'obj' => %q{\"kafka.controller\":type=\"ControllerStats\",name=\"UncleanLeaderElectionsPerSec\"},
    'result_alias' => 'kafka.controller.ControllerStats.UncleanLeaderElectionsPerSec',
    'attr' => [
      'Count',
      'FifteenMinuteRate',
      'FiveMinuteRate',
      'MeanRate',
      'OneMinuteRate',
    ],
  },
]
