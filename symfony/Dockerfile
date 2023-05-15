FROM alpine:3.14

RUN apk add --no-cache php8 php8-fpm php8-opcache php8-json php8-mbstring php8-phar php8-openssl php8-pdo php8-pdo_mysql php8-tokenizer php8-xmlwriter php8-pecl-redis

RUN apk update && apk add --no-cache \
    bash \
    curl \
    sudo

RUN  curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | sudo -E bash
RUN apk add symfony-cli

EXPOSE 9000


CMD ["php-fpm8", "-F"]


