#
# Cookbook Name:: jmxtrans
# Recipe:: zipfile
#
# Copyright 2012, Bryan W. Berry
# Copyright 2013, Brian Flad
#
# Apache 2.0 license
#
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
