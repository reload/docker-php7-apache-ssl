
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
 * xdebug
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
