# Troubleshooting Error 500

## Masalah: Error 500 pada login

### Langkah Perbaikan:
1. php artisan key:generate
2. chmod -R 755 storage/
3. php artisan config:clear
4. php artisan migrate --force
