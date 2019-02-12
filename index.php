<?php

session_start();

require 'database/databaseConnection.php';
require 'vendor/autoload.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    require 'routes/web.php';
    exit();
}

require 'resources/views/components/header.html';
require 'resources/views/main.html';
require 'resources/views/components/footer.html';
