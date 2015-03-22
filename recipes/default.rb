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
  initial_root_password 'change me'
  action [:create, :start]
end

file "/var/www/info.php" do
  content "<?php phpinfo(); ?>"
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

#mysql_config 'default' do
#  source 'mysite.cnf.erb'
#  notifies :restart, 'mysql_service[default]'
#  action :create
#end
