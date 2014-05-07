# wordpress-nginx cookbook

Deploy requirements for a Wordpress site running on nginx + mysql

## Requirements

Cookbooks:

- git
- database
- mysql
- nginx
- php-fpm

## Attributes

- `default[:wordpress][:user]` - system user to create and run website. default is `wordpress`
- `default[:wordpress][:group]` - system group to create and apply to website files. default is `wordpress`
- `default[:wordpress][:domain]` - domain for nginx configuration. default is `wordpress.example.com`
- `default[:wordpress][:appdir]` - location to host wordpress website code. default is `/home/wordpress/wordpress.example.com`

## Recipes

### default

Install all dependencies (server, user and mysql)

### user

Install user and groups required for Wordpress directory


### database

Install mysql and setup database + logins

### server

Install `nginx` and site configuration

## Author

Author:: Jimmy Hillis (jimmy@hillis.me)
