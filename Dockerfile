FROM php:apache
MAINTAINER Evgeny Cherkashin <eugeneai@irnok.net>
# COPY config/php.ini /usr/local/etc/php/
COPY ./ /var/www/html/
