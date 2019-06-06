FROM php:7-alpine

COPY --from=composer:1.8 /usr/bin/composer /usr/bin/composer

RUN mkdir /app

WORKDIR /app

COPY . .

RUN /usr/bin/composer install --ignore-platform-reqs
