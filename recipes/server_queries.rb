#
# Cookbook Name:: jmxtrans
# Recipe:: default
#
# Copyright 2012, Bryan W. Berry
# Copyright 2013, Brian Flad
#
# Apache 2.0 license
#

servers = node.normal['jmxtrans']['servers']
servers.each do |server|
  server['queries'] ||= []
  server['queries'] << node['jmxtrans']['default_queries']['jvm']
  case server['type']
  when 'cassandra'
    server['queries'] << node['jmxtrans']['default_queries']['cassandra']
  when 'hadoop-datanode'
    server['queries'] << node['jmxtrans']['default_queries']['hadoop-datanode']
  when 'hadoop-jobtracker'
    server['queries'] << node['jmxtrans']['default_queries']['hadoop-jobtracker']
  when 'hadoop-namenode'
    server['queries'] << node['jmxtrans']['default_queries']['hadoop-namenode']
  when 'hadoop-tasktracker'
    server['queries'] << node['jmxtrans']['default_queries']['hadoop-tasktracker']
  when 'kafka'
    server['queries'] << node['jmxtrans']['default_queries']['kafka']
  when 'tomcat'
    server['queries'] << node['jmxtrans']['default_queries']['tomcat']
  when 'zookeeper'
    server['queries'] << node['jmxtrans']['default_queries']['zookeeper']
  end
  server['queries'].flatten!
end

directory "#{node['jmxtrans']['home']}/json" do
  owner node['jmxtrans']['user']
  group node['jmxtrans']['user']
  mode '0755'
end

template 'set1.json' do
  path "#{node['jmxtrans']['home']}/json/set1.json"
  source 'set1.json.erb'
  owner node['jmxtrans']['user']
  group node['jmxtrans']['user']
  mode '0755'
  variables(
            :servers => servers,
            :graphite_host => node['jmxtrans']['graphite']['host'],
            :graphite_port => node['jmxtrans']['graphite']['port'],
            :root_prefix => node['jmxtrans']['root_prefix']
            )
end
