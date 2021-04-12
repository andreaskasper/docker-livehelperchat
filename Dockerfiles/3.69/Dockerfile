FROM php:8-apache

RUN apt-get update \
  && apt-get -y install wget unzip \
  && wget https://github.com/LiveHelperChat/livehelperchat/archive/refs/tags/3.69v.zip -O /tmp/source.zip \
  && unzip /tmp/source.zip -d /tmp/source/ \
  && mv /tmp/source/livehelperchat-3.69v/lhc_web/* /var/www/html/ \
  && rm -f /tmp/* \
  && apt-get clean
