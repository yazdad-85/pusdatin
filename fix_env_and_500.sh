#!/bin/bash

echo "🔧 Memperbaiki .env dan Error 500..."

# Backup .env
cp .env .env.backup

# Perbaiki DB_HOST
sed -i "s/DB_HOST=127.0.0.1/DB_HOST=localhost/" .env

# Set permissions
chmod -R 755 storage/
chmod -R 755 bootstrap/cache/
chmod 644 .env

# Clear caches
php artisan config:clear
php artisan cache:clear
php artisan migrate --force

echo "✅ Selesai!"
