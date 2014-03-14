#
# Cookbook Name:: jmxtrans
# Recipe:: default
#
# Copyright 2012, Bryan W. Berry
# Copyright 2013, Brian Flad
#
# Apache 2.0 license
#

if node['jmxtrans']['url'] == nil or node['jmxtrans']['url'] == ''
  package "jmxtrans" do
    action :install
    options "--force-yes"
  end

elsif node['jmxtrans']['url'].end_with?('.zip')
  include_recipe 'ark'

  ark 'jmxtrans' do
    url node['jmxtrans']['url']
    checksum node['jmxtrans']['checksum']
    version 'latest'
    prefix_root node['jmxtrans']['install_prefix']
    prefix_home node['jmxtrans']['install_prefix']
    owner node['jmxtrans']['user']
    group node['jmxtrans']['user']
  end

elsif node['jmxtrans']['url'].end_with?('.deb')
  tmp_file = '/tmp' << node['jmxtrans']['url'].match('/[^/]*$').to_s
  remote_file tmp_file do
    source node['jmxtrans']['url']
    mode 0644
    checksum node['jmxtrans']['checksum']
  end

  dpkg_package 'jmxtrans' do
    source tmp_file
    action :install
  end

else
  fail 'Unrecognized url install type for jmxtrans (only .zip / .deb currently supported)'
end

user node['jmxtrans']['user']

include_recipe "jmxtrans::jvm"

servers = node.normal['jmxtrans']['servers']
servers.each do |server|
  if server.has_key?(:queries)
    next
  end
  server[:queries] = []
  case server[:type].to_sym
  when :cassandra, :hadoop_datanode, :hadoop_jobtracker, :hadoop_namenode, :hadoop_tasktracker, :kafka, :tomcat, :zookeeper
    log "jmxtrans: adding default queries for server type: #{server[:type]}"
    include_recipe %(jmxtrans::#{server[:type]})
    server[:queries] << node['jmxtrans']['default_queries'][server[:type]]
  else
    log "jmxtrans: unrecognized server type '#{server[:type]}' -- skipping default queries"
  end

  # Always include jmx (todo: make this configurable)
  server[:queries] << node['jmxtrans']['default_queries']['jvm']

  server[:queries].flatten!

end

file "#{node['jmxtrans']['home']}/jmxtrans.sh" do
  owner node['jmxtrans']['user']
  group node['jmxtrans']['user']
  mode 00755
end

if platform_family?('debian')
  template '/etc/init.d/jmxtrans' do
    source 'jmxtrans.init.deb.erb'
    owner 'root'
    group 'root'
    mode '0755'
    variables(:name => 'jmxtrans')
    notifies :restart, 'service[jmxtrans]'
  end
elsif platform_family?('rhel')
  template '/etc/init.d/jmxtrans' do
    source 'jmxtrans.init.el.erb'
    owner 'root'
    group 'root'
    mode '0755'
    variables(:name => 'jmxtrans')
    notifies :restart, 'service[jmxtrans]'
  end
else
  fail "Unknown platform family in jmxtrans -- don't have an init template!"
end

template '/etc/default/jmxtrans' do
  source 'jmxtrans_default.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[jmxtrans]'
end

directory node['jmxtrans']['log_dir'] do
  owner node['jmxtrans']['user']
  group node['jmxtrans']['user']
  mode '0755'
end

directory "#{node['jmxtrans']['home']}/json" do
  owner node['jmxtrans']['user']
  group node['jmxtrans']['user']
  mode '0755'
end

template "#{node['jmxtrans']['home']}/json/set1.json" do
  source 'set1.json.erb'
  owner node['jmxtrans']['user']
  group node['jmxtrans']['user']
  mode '0755'
  notifies :restart, 'service[jmxtrans]'
  variables(
            :servers => servers,
            :output_type => node['jmxtrans']['output']['type'],
            :output_host => node['jmxtrans']['output']['host'],
            :output_port => node['jmxtrans']['output']['port'],
            :root_prefix => node['jmxtrans']['root_prefix']
           )
end

package 'gzip'

cron 'compress and remove logs rotated by log4j' do
  minute '0'
  hour '0'
  command "find #{node['jmxtrans']['log_dir']}/ -name '*.gz' -mtime +30 -exec rm -f '{}' \\; ; \
  find #{node['jmxtrans']['log_dir']} ! -name '*.gz' -mtime +2 -exec gzip '{}' \\;"
end

service 'jmxtrans' do
  supports :restart => true, :status => true, :reload => true
  action [:enable, :start]
end
