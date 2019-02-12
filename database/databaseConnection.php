<?php

$config = require 'config.php';

try {
    $pdo = new PDO(
    	$config['database'].';'.$config['host'], 
    	$config['username'], 
    	$config['password']
    );
} catch (Execption $e) {
    header ('resources/views/error.html');
}
