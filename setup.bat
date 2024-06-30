@echo off
echo Starting Laravel setup...

:: Set the current directory to the script's directory
cd /d %~dp0

:: Check if PHP is installed
echo Checking if PHP is installed...
where php >nul 2>nul
if errorlevel 1 (
    echo PHP is not installed. Please download and install PHP manually from https://www.php.net/downloads.php
    pause
    exit /b 1
)

:: Check if Composer is installed
echo Checking if Composer is installed...
where composer >nul 2>nul
if errorlevel 1 (
    echo Composer is not installed. Please install it and try again.
    pause
    exit /b 1
)

:: Check if MySQL is installed
echo Checking if MySQL is installed...
where mysql >nul 2>nul
if errorlevel 1 (
    echo MySQL is not installed. Please download MySQL from https://dev.mysql.com/downloads/ and install it manually.
    pause
    exit /b 1
)

:: Check if .env file exists, if not copy from .env.example
IF NOT EXIST .env (
    echo .env file not found, copying .env.example to .env
    copy .env.example .env
    echo .env file Created Successfully
    echo Now please configure .env file and run this setup again
)

set /p db_password=Enter MySQL database password: 

:: Write password to .env file
echo DB_PASSWORD=%db_password% >> .env

:: Install PHP dependencies if vendor folder does not exist
IF NOT EXIST vendor (
    echo Installing PHP dependencies...
    composer install

) ELSE (
    echo Dependencies are already installed, skipping installation.
)

:: Generate application key
echo Generating application key...
php artisan key:generate

:: Migrate the database
echo Migrating the database...
php artisan migrate

:: Seed the database
echo Seeding Database
php artisan db:seed --class=GeneralSettingsSeeder

:: Clear cache
echo Clearing cache...
php artisan config:cache

:: Start Laravel development server
echo Starting Laravel development server...
start php -S localhost:8000 -t public


echo Laravel setup completed.
pause