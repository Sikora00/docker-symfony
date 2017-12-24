FROM php:7.2-apache
COPY ./ /var/www/html/

RUN apt-get update \
    && docker-php-ext-install mbstring mysqli opcache pdo_mysql

### Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN apt-get -y install git-core
WORKDIR /var/www/html
USER 1000
RUN composer config extra.symfony.allow-contrib true

# Trigger by docker tag name
RUN curl -H "Content-Type: application/json" --data '{"docker_tag": "master"}' -X POST https://registry.hub.docker.com/u/sikora00/docker-symfony/trigger/71abcdbc-2c48-4d71-afda-72edbe6436c7/


#RUN pecl install redis-3.1.0 \
#    && pecl install xdebug-2.5.0 \
#    && docker-php-ext-enable redis xdebug
USER root
EXPOSE 80