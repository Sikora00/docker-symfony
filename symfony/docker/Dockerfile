FROM php:7.2-apache
COPY src/ /var/www/html/

RUN apt-get update \
    && docker-php-ext-install mbstring mysqli opcache pdo_mysql

#RUN pecl install redis-3.1.0 \
#    && pecl install xdebug-2.5.0 \
#    && docker-php-ext-enable redis xdebug