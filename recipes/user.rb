#
# Cookbook Name:: wordpress-nginx-cookbook
# Recipe:: user
#

# create user and group

group node[:wordpress][:group]

user node[:wordpress][:user] do
  group node[:wordpress][:group]
  system true
  supports :manage_home => true
  home "/home/#{node.wordpress.user}"
  shell '/bin/bash'
end

# setup working directory for application

directory node[:wordpress][:appdir] do
  owner node[:wordpress][:user]
  group node[:wordpress][:group]
  action :create
end
