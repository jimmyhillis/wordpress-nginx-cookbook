name             "wordpress-nginx"
maintainer       "Jimmy Hillis"
maintainer_email "jimmy@hillis.me"
license          "MIT"
description      "Installs and configures Wordpress running under nginx"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "0.1.0"

depends "git"
depends "database"
depends "mysql"
depends "nginx"
depends "php-fpm"
