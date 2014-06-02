#
# Cookbook Name:: jmxtrans
# Recipe:: default
#
# Copyright 2012, Bryan W. Berry
# Copyright 2013, Brian Flad
#
# Apache 2.0 license
#

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
