FROM php:8-apache

LABEL MAINTAINER="Andreas Kasper <andreas.kasper@goo1.de>"

RUN apt-get update \
  && apt-get -y install wget unzip \
  && wget https://github.com/LiveHelperChat/livehelperchat/archive/refs/tags/3.69v.zip -O /tmp/source.zip \
  && unzip /tmp/source.zip -d /tmp/source/ \
  && mv /tmp/source/livehelperchat-3.69v/lhc_web/* /var/www/html/ \
  && chown --recursive www-data:www-data html \
  && rm -rf /tmp/* \
  && apt-get clean

EXPOSE 80
