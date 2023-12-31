
Laravel Version : Laravel 9.0
PHP Version on my computer : PHP 8.1.1
Database : MySQL

<!-- English -->

How to Build the Report App:
1. Run the 'composer require "ext-gd:*" --ignore-platform-reqs' command to install the required package.
2. Customizing the Database, there are two options:
   First Option: Import the sql database that I have provided with the name assessment_fauzian.sql in the root directory of this application. This database already has dummy data. The data is random because I use faker to fill the data. If you want to add data to the report table, please run the command:
   "php artisan db:seed --class=ReportTableSeeder" (Every time you run this command, it will insert 10 dummy data into the report table). 

   Second Option: create a sql database on local with the name assessment_fauzian (according to env). Then do the command "php artisan migrate" to migrate the table. After that, to fill in the data, you can do the command:
   "php artisan db:seed --class=UserTableSeeder" (Every time you run this command, you will insert 10 dummy data into the User table).
   "php artisan db:seed --class=BusinessTableSeeder" (Every time you run this command, it will insert 10 dummy data into the Business table).
   "php artisan db:seed --class=ReportTableSeeder" (Every time you run this command, it will insert 10 dummy data into the report table).
   Please adjust the amount of data as needed.
3. Run the "php artisan serve". The application is ready to use. The guide to using the application, is in the file "guide_assessment_fauzian.pdf" in the root directory of this folder.


<!-- Bahasa -->
Cara Build Aplikasi Report App :
1. Menjalankan perintah 'composer require "ext-gd:*" --ignore-platform-reqs' untuk meginstal package yang dibutuhkan.
2. Menyesuaikan Database, ada dua opsi yaitu :
   Opsi Pertama : Import database sql yang sudah saya sediakan dengan nama assessment_fauzian.sql pada direktori root aplikasi ini. database ini sudah ada data dummy nya. Data yang ada di dalamnya random dikarenakan saya menggunakan faker untuk mengisi datanya. Jika ingin menambah data pada table report, silahkan jalankan perintah :
   "php artisan db:seed --class=ReportTableSeeder" (Setiap menjalankan perintah ini, akan insert data dummy ke table report sebanyak 10 data).

   Opsi Kedua : buat database sql di local dengan nama assessment_fauzian (sesuai dengan env). Lalu meakukan perintah "php artisan migrate" untuk melakukan migrasi table. Setelah itu untuk mengisi datanya dapat melakukan perintah :
   "php artisan db:seed --class=UserTableSeeder" (Setiap menjalankan perintah ini, akan insert data dummy ke table User sebanyak 10 data).
   "php artisan db:seed --class=BusinessTableSeeder" (Setiap menjalankan perintah ini, akan insert data dummy ke table Business sebanyak 10 data).
   "php artisan db:seed --class=ReportTableSeeder" (Setiap menjalankan perintah ini, akan insert data dummy ke table report sebanyak 10 data).
   Silahkan sesuaikan jumlah data sesuai yang dibutuhkan.

3. Jalankan "php artisan serve". Aplikasi sudah siap digunakan. Panduan menggunakan aplikasi, ada pada file "panduan_assessment_fauzian.pdf" pada direktori root folder ini.