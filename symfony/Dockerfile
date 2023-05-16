FROM alpine:3.14

RUN apk add --no-cache php8 php8-fpm php8-opcache php8-json php8-mbstring php8-phar php8-openssl php8-pdo php8-pdo_mysql php8-tokenizer php8-xmlwriter php8-pecl-redis php8-ctype php8-iconv

RUN apk update && apk add --no-cache \
    bash \
    curl \
    sudo \
    git 

RUN curl -sS https://getcomposer.org/installer | php8 -- --install-dir=/usr/local/bin --filename=composer

RUN chmod +x /usr/local/bin/composer

RUN wget https://get.symfony.com/cli/installer -O - | bash

RUN /usr/bin/php8 /usr/local/bin/composer create-project symfony/skeleton:"5.4.*" myapp

EXPOSE 9000

CMD ["php-fpm8", "-F"]


