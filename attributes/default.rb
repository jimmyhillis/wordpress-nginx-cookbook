# server settings
default[:wordpress][:user] = 'wordpress'
default[:wordpress][:group] = 'wordpress'
default[:wordpress][:domain] = 'wordpress.example.com'
default[:wordpress][:appdir] = '/home/wordpress/wordpress.example.com'

# database settings
default[:wordpress][:database][:username] = default[:wordpress][:user]
default[:wordpress][:database][:password] = nil
default[:wordpress][:database][:host] = 'localhost'
default[:wordpress][:database][:database] = default[:wordpress][:domain]
