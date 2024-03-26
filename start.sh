cd server/
composer install/
cp .env.example .env/
php artisan key:generate/
php artisan migrate/
php artisan serve --port=9002 --host 0.0.0.0/
cd ../
flutter pub run flutter_launcher_icons /
flutter pub run flutter_native_splash:create/
flutter run --release