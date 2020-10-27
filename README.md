<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## Requirements

- PHP 7.2
- MySQL
- Laravel Composer Installed

## Steps-to-Setup

- Rename '.env.example' in the project folder to '.env'; Add 'APP_KEY=base64:t2HmnB3ERHGFx47icUnXuFiLzFvpEx+Iw27x6J6ZcUw='; Add DB credentials
- Import the DB file 'eduvanz.sql' in MySQL
- In terminal / command prompt, go to project directory
- Execute command 'composer install'
- Start the server by executing the command 'php artisan serve'

## Practical Assignent

- Admin Panel to list all the participants -> URL : {host}/dashboard
- All apis are provided via Postman Collection file 'Eduvanz.postman_collection.json', so import them in POSTMAN App and test them

## File Locations

- Routes -> /routes/api.php; /routes/web.php
- Controllers -> /app/Http/Controllers/ParticipantController.php
- Models -> /app/Participant.php
- Validations -> /app/Http/Requests/ParticipantRequest.php
- Views -> /resources/views/
- CSS / JS -> /public/
- DB Credentials -> .env
