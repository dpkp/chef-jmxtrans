#
# Cookbook Name:: jmxtrans
# Recipe:: default
#
# Copyright 2012, Bryan W. Berry
# Copyright 2013, Brian Flad
#
# Apache 2.0 license
#

include_recipe 'jmxtrans::_setup'
include_recipe %(jmxtrans::#{node[:jmxtrans][:install_method]})
include_recipe 'jmxtrans::_configure'
