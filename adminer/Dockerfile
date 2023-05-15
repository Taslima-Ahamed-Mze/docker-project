FROM alpine:3.14

RUN apk add --no-cache php8 php8-session php8-zip php8-pdo_mysql php8-mysqli php8-gd php8-xml php8-fileinfo php8-iconv php8-simplexml php8-tokenizer php8-dom php8-json php8-ctype php8-phar php8-pdo_pgsql

RUN mkdir -p /var/www/
RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O /var/www/index.php

EXPOSE 8080

CMD ["php8", "-S", "0.0.0.0:8080", "-t", "/var/www/"]
