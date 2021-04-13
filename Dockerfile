FROM php:8-apache

LABEL MAINTAINER="Andreas Kasper <andreas.kasper@goo1.de>"

RUN apt-get update \
  && apt-get -y install wget unzip libfreetype6-dev libjpeg62-turbo-dev libpng-dev libwebp-dev \
  && docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
  && docker-php-ext-install -j$(nproc) gd \
  && docker-php-ext-install pdo pdo_mysql \
  && docker-php-ext-install bcmath \
  && wget https://github.com/LiveHelperChat/livehelperchat/archive/refs/tags/3.00v.zip -O /tmp/source.zip \
  && unzip /tmp/source.zip -d /tmp/source/ \
  && mv /tmp/source/livehelperchat-3.00v/lhc_web/* /var/www/html/ \
  && chown --recursive www-data:www-data /var/www/html \
  && rm -rf /tmp/* \
  && apt-get clean

EXPOSE 80
