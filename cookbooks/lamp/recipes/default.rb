#
# Cookbook Name:: lamp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
service 'apache2' do
  action [:enable, :start]
end

mysql_service 'default' do
  port '3306'
  version '5.5'
  bind_address '0.0.0.0'
  initial_root_password 'Lws123'
  action [:create, :start]
end

mysql_client 'default' do
  action :create
end

#mysql_config 'default' do
#  source 'mysite.cnf.erb'
#  notifies :restart, 'mysql_service[default]'
#  action :create
#end
