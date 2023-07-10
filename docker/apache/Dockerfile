FROM php:8.1-apache

# install packeges
RUN apt-get update && \
    apt-get install -y \
    curl \
    git \
    htop \
    nano \
    wget \
    imagemagick \
    imagemagick-doc \
    openssl \
    zip \
    unzip \
    libicu-dev \
    libzip-dev \
    libpng-dev \
    libxml2-dev

# php config
COPY docker/apache/apto.ini /usr/local/etc/php/conf.d/apto.ini
RUN docker-php-ext-install opcache intl mysqli gd zip xml soap bcmath && \
    docker-php-ext-enable opcache intl mysqli gd zip xml soap bcmath

# apache config
COPY docker/apache/apto.conf /etc/apache2/sites-available/apto.conf
RUN a2enmod rewrite && \
    a2enmod actions && \
    a2enmod ssl && \
    a2enmod headers && \
    a2enmod expires && \
    a2ensite apto

# install composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    /usr/local/bin/composer self-update

# add apto user
RUN useradd -ms /bin/bash apto
RUN echo 'apto:apto' | chpasswd

# set apache user
ENV APACHE_RUN_USER=apto
ENV APACHE_RUN_GROUP=apto

# change user
WORKDIR /var/www/html
USER apto
