#!/bin/bash

echo "🔧 Memperbaiki Error 500 pada Pusdatin..."

# 1. Set permissions
echo "📁 Setting file permissions..."
chmod -R 755 storage/
chmod -R 755 bootstrap/cache/
chmod 644 .env

# 2. Clear all caches
echo "🧹 Clearing caches..."
php artisan config:clear
php artisan cache:clear
php artisan view:clear
php artisan route:clear

# 3. Generate APP_KEY
echo "🔑 Generating APP_KEY..."
php artisan key:generate

# 4. Run migrations
echo "🗄️ Running migrations..."
php artisan migrate --force

echo "✅ Perbaikan selesai!"
