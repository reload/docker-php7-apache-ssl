FROM phusion/baseimage:0.9.17

MAINTAINER Thomas Fini Hansen <fini@reload.dk>

COPY files/etc/ /etc/

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get -y install \
      apache2 \
      libapache2-mod-php5 \
      php5-curl \
      php5-gd \
      php5-mysql \
      php5-xdebug \
      php5-xhprof \
      # For default snakeoil certificates which SSL is configuered to use
      # per default in Apache.
      ssl-cert \
  && \
  a2enmod rewrite && \
  a2enmod ssl && \
  a2ensite default-ssl && \
  a2enconf drupal && \
  php5enmod drupal-recommended && \
  php5enmod xdebug && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 80 443
