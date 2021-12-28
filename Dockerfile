FROM php:7.3.4-apache
LABEL key="value"
RUN docker-php-ext-install mysqli pdo pdo_mysql