FROM php:8-apache

LABEL MAINTAINER="Andreas Kasper <andreas.kasper@goo1.de>"

EXPOSE 80

RUN apt-get update \
  && apt-get -y install wget unzip libfreetype6-dev libjpeg62-turbo-dev libpng-dev libwebp-dev \
  && docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
  && docker-php-ext-install -j$(nproc) gd \
  && docker-php-ext-install pdo pdo_mysql \
  && docker-php-ext-install bcmath

RUN wget https://github.com/LiveHelperChat/livehelperchat/archive/refs/tags/2.98v.zip -O /tmp/source.zip \
  && unzip /tmp/source.zip -d /tmp/source/ \
  && mv /tmp/source/livehelperchat-2.98v/lhc_web/* /var/www/html/ \
  && chown --recursive www-data:www-data /var/www/html \
  && rm -rf /tmp/* \
  && apt-get clean
