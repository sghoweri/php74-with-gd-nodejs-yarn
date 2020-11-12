FROM php:7.4-fpm-alpine

RUN apk add --no-cache curl \
  autoconf \
  curl \
  git \
  nodejs \
  bash \
  libzip-dev \
  libpng-dev \
  libjpeg-turbo-dev \
  npm \
  yarn \
  openssh \
  composer \
  sudo \
  unzip \
  wget \
  zip \
  nasm

RUN docker-php-ext-install gd
RUN docker-php-ext-configure gd --with-jpeg

RUN composer self-update --2
