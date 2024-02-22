#!/bin/bash

# Arrêter le script si une commande échoue
set -e

# Modifier les permissions
chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache
chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# Installer les dépendances Composer
echo "Installation des dépendances Composer..."
composer install

# Générer la clé d'application Laravel
echo "Génération de la clé d'application Laravel..."
php artisan key:generate

# Exécuter les migrations Laravel
echo "Exécution des migrations Laravel..."
php artisan migrate:fresh --seed

# Démarrer PHP-FPM
echo "Démarrage de PHP-FPM..."
exec php-fpm
