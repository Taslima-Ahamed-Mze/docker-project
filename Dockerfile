FROM php:alpine

# Installation des dépendances nécessaires
RUN apk --no-cache add curl php php-json php-phar php-iconv php-dom openssl

# Téléchargement et installation de Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Configuration du répertoire de travail WORKDIR /app

# Copie des fichiers de l'application COPY . /app

# Installation des dépendances de l'application RUN composer install --no-scripts --no-autoloader

# Exécution des scripts et chargement des classes RUN composer dump-autoload --optimize

# Commande par défaut pour exécuter l'application (modifiable selon votre projet) CMD ["php", "index.php"]
