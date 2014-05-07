#
# Cookbook Name:: wordpress-nginx-cookbook
# Recipe:: default
#

include_recipe 'apt'
include_recipe 'build-essential'
include_recipe 'php-fpm'
include_recipe 'wordpress-nginx::user'
include_recipe 'wordpress-nginx::server'
include_recipe 'wordpress-nginx::database'

package 'git'
