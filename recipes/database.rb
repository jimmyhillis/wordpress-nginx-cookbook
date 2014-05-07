#
# Cookbook Name:: wordpress-nginx-cookbook
# Recipe:: database
#

# install mysql database

include_recipe "mysql::client"
include_recipe "mysql::ruby"
include_recipe "mysql::server"

package "php5-mysql"

mysql_connection_info = {
  :host     => 'localhost',
  :username => 'root',
  :password => node['mysql']['server_root_password']
 }

mysql_database node[:wordpress][:database][:database] do
  connection  mysql_connection_info
  action      :create
end

mysql_database_user node[:wordpress][:database][:username] do
  connection      mysql_connection_info
  password        node[:wordpress][:database][:password]
  host            node[:wordpress][:database][:host]
  database_name   node[:wordpress][:database][:database]
  action          :create
end

mysql_database_user node[:wordpress][:database][:username] do
  connection      mysql_connection_info
  database_name   node[:wordpress][:database][:database]
  privileges      [:all]
  action          :grant
end
