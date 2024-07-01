@echo off
echo Starting Laravel setup...

:: Set the current directory to the script's directory
cd /d %~dp0

:: Check if Composer is installed
echo Checking if Composer is installed...
where composer >nul 2>nul
if errorlevel 1 (
    echo Composer is not installed. Please install it from the SetupTools folder or get it from https://getcomposer.org/download/. 
    pause
    exit /b 1
)
echo

:: Check if MySQL is installed
echo Checking if MySQL is installed...
where mysql >nul 2>nul
if errorlevel 1 (
    echo MySQL is not installed. Please install it from the SetupTools folder or get it from https://dev.mysql.com/downloads/.
    pause
    exit /b 1
)
echo

:: Check if .env file exists, if not copy from .env.example
IF NOT EXIST .env (
    echo .env file not found, copying .env.example to .env
    copy .env.example .env
    echo .env file Created Successfully
    echo Now please configure .env file and run this setup again
)
echo

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
echo

:: Generate application key
echo Generating application key...
php artisan key:generate
echo

:: Migrate the database
echo Migrating the database...
php artisan migrate
echo

:: Seed the database
echo Seeding Database
php artisan db:seed --class=GeneralSettingsSeeder
echo

:: Clear cache
echo Clearing cache...
php artisan config:cache
echo

echo Laravel setup completed.

:: Start Laravel development server
echo Starting Laravel development server...
start php -S localhost:8000 -t public

pause