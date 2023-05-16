# ALPINE
FROM alpine:3.16
# BASE
RUN apk update && apk upgrade --available && apk add --no-cache curl zip unzip && apk add bash && apk --no-cache update 
# PHP
RUN apk add --no-cache php8 \
    php8-cli \ 
    php8-common \ 
    php8-ctype \ 
    php8-curl \
    php8-dom \
    php8-fileinfo \ 
    php8-fpm \
    php8-iconv \
    php8-json \
    php8-mbstring \
    php8-opcache \ 
    php8-openssl \
    php8-pdo \ 
    php8-pdo_mysql \ 
    php8-pdo_sqlite \ 
    php8-pecl-redis \ 
    php8-phar \
    php8-simplexml \
    php8-tokenizer \
    php8-xml \ 
    php8-xmlwriter \
    php8-zip
# COMPOSER
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php \ 
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && rm -rf composer-setup.php \
    && apk add --no-cache bash && curl -sS https://get.symfony.com/cli/installer | bash
# DEPLACEMENT DANS LE DOSSIER APP
WORKDIR /var/www/app
# COPIE DU PROJET SYMFONY DANS NOTRE IMAGE (COPY SOURCE DESTINATION)
COPY . /var/www/app
# COPIE DE SCRIPT ENTRYPOINT DANS LE BIN
COPY entrypoint.sh /usr/local/bin/ 
## ls /usr/local/bin/ -> composer,entrypoint.sh ##
# COMMANDES COMPOSER
RUN composer update && composer install
# OUVERTURE DU PORT 80 POUR LE CONTAINER
EXPOSE 80
# DEFINITION DU FICHER ENTRYPOINT DE L'IMAGE
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# 
# HEALTHCHECK --interval=1m --timeout=30s --retries=3 CMD curl --fail http://localhost:80 || exit 1