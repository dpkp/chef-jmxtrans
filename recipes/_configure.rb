#
# Cookbook Name:: jmxtrans
# Recipe:: default
#
# Copyright 2012, Bryan W. Berry
# Copyright 2013, Brian Flad
#
# Apache 2.0 license
#

include_recipe 'jmxtrans::server_queries'

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
  subscribes :restart, 'template[set1.json]'
end
