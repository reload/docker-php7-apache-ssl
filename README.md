
# Generic Drupal Apache container with SSL support.

Memory limit has been raised to 256MiB, to give room for Features.

# PHP extensions

The following PHP extensions will be enabled by default:

 * calendar
 * ctype
 * curl
 * dom
 * exif
 * fileinfo
 * ftp
 * gd
 * gettext
 * iconv
 * json
 * mcrypt
 * mysql
 * mysqli
 * mysqlnd
 * opcache
 * pdo
 * pdo_mysql
 * phar
 * posix
 * readline
 * shmop
 * simplexml
 * soap
 * sockets
 * sysvmsg
 * sysvsem
 * sysvshm
 * tokenizer
 * wddx
 * xhprof
 * xml
 * xmlreader
 * xmlwriter
 * xsl
 * mbstring
 * zip

If you want extra extensions enabled add a space separated list of
extensions to the environment variable `PHP_EXTRA_EXTENSIONS`.

If you want fewer extensions enabled list _all_ the extensions you
want enabled in the environment variable `PHP_DEFAULT_EXTENSIONS`.

Currently the following extra extensions are supported:

 * intl

## Xdebug
Xdebug is disabled pr. default but the extension is available and
we ship with xdebug.remote_connect_back enabled (when the extension
is enabled). To enable the xdebug-extension execute
/usr/local/bin/xdebug-start via docker, eg:
```
docker exec -ti <container id> xdebug-start
```

Or via docker-compose, eg. if the image is used by a service called
fpm:
```
docker-compose exec fpm xdebug-start
```

The scripts enables xdebug and blocks until the user presses enter
or terminates the script after which xdebug is disabled again.
