@echo off
echo Starting Laravel setup...

:: Set the current directory to the script's directory
cd /d %~dp0

set "PHP_PATH=%~dp0php\php.exe"
set "Composer_PATH=%~dp0composer\bin\composer.phar"
set "LARAVEL_PATH=%~dp0

:: Check if PHP is installed
echo Checking if PHP is installed...
if not exist "%PHP_PATH%" (
    echo PHP is not installed. Please install it from the SetupTools folder or get it from https://windows.php.net/download#php-8.2 
    pause
    exit /b 1
)
call "%PHP_PATH%" --version
echo.

:: Check if Composer is installed
echo Checking if Composer is installed...
if not exist "%Composer_PATH%" (
    echo Composer is not installed. Please install it from the SetupTools folder or get it from https://getcomposer.org/download/
    pause
    exit /b 1
)
call "%PHP_PATH%" "%Composer_PATH%" --version
echo.

:: Install PHP dependencies if vendor folder does not exist
IF NOT EXIST vendor (
    echo Installing PHP dependencies...
    "%PHP_PATH%" "%Composer_PATH%" install

) ELSE (
    echo Dependencies are already installed, skipping installation.
)
echo.

:: Check if .env file exists, if not copy from .env.example
IF NOT EXIST .env (
    echo .env file not found, copying .env.example to .env
    copy .env.example .env
    echo .env file Created Successfully
    echo Now please configure .env file and run this setup again
    echo.
)

set /p db_password="Enter MySQL Database Password: "

:: Write password to .env file
echo DB_PASSWORD=%db_password% >> .env

:: Generate application key
echo Generating application key...
call "%PHP_PATH%" artisan key:generate
echo.

:: Migrate the database
echo Migrating the database...
call "%PHP_PATH%" artisan migrate
echo.

:: Seed the database
echo Seeding Database
call "%PHP_PATH%" artisan db:seed --class=GeneralSettingsSeeder
echo.

:: Clear cache
echo Clearing cache...
call "%PHP_PATH%" artisan config:cache
echo.

echo Laravel setup completed.

:: Start Laravel development server
echo Starting Laravel development server...
start "" "%PHP_PATH%" "%LARAVEL_PATH%artisan" serve --host=localhost --port=8000

pause