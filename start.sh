#!/bin/bash

set -e

while ! nc -z mysql 3306; do
    sleep 1
done

chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache
chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

echo "Installation des dépendances Composer..."
composer install

echo "Génération de la clé d'application Laravel..."
php artisan key:generate

echo "Exécution des migrations Laravel..."
php artisan migrate:fresh --seed

echo "Démarrage de PHP-FPM..."
exec php-fpm
