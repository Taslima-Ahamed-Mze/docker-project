# Utilisez l'image Alpine comme image de base
FROM alpine:3.14

# Installez PHP, Composer et les dépendances nécessaires
RUN apk update && apk add --no-cache php7 php7-json php7-openssl php7-phar php7-mbstring git curl \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

# Définissez le répertoire de travail
WORKDIR /app

# Copiez les fichiers de votre projet dans le conteneur
COPY . /app

# Exécutez la commande par défaut lorsque le conteneur démarre
CMD ["composer", "install"] 