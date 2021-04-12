FROM php:8-apache

LABEL MAINTAINER="Andreas Kasper <andreas.kasper@goo1.de>"

RUN apt-get update \
  && apt-get -y install wget unzip mariadb-server \
  && service mysql start \
  && wget https://github.com/LiveHelperChat/livehelperchat/archive/refs/tags/3.69v.zip -O /tmp/source.zip \
  && unzip /tmp/source.zip -d /tmp/source/ \
  && mv /tmp/source/livehelperchat-3.69v/lhc_web/* /var/www/html/ \
  && chown --recursive www-data:www-data /var/www/html \
  && rm -rf /tmp/* \
  && apt-get clean
  
RUN mariadb -e "CREATE DATABASE livehelperchat; CREATE USER 'lhc' IDENTIFIED BY 'lhc'; GRANT ALL privileges ON livehelperchat.* TO lhc@localhost; FLUSH PRIVILEGES; "

EXPOSE 80
