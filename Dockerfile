FROM phusion/baseimage:0.9.18

MAINTAINER Reload A/S <kontakt@reload.dk>

COPY files/etc/ /etc/

RUN \
  apt-get update && \
  # Install packages needed to enable an extra repository.
  DEBIAN_FRONTEND=noninteractive apt-get -y install python-software-properties && \
  # Add a repo that contains php 5.6
  LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php && \
  # Do the remaining installation of packages.
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get -y install \
      apache2 \
      libapache2-mod-php5.6 \
      php5.6-curl \
      php5.6-gd \
      php5.6-mysql \
      php5.6-xml \
      php5.6-xdebug \
      php5.6-xhprof \
      php5.6-mbstring \
      # For default snakeoil certificates which SSL is configuered to use
      # per default in Apache.
      ssl-cert \
  && \
  a2enmod rewrite && \
  a2enmod ssl && \
  a2ensite default-ssl && \
  a2enconf drupal && \
  phpenmod drupal-recommended && \
  phpenmod xdebug && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 80 443
