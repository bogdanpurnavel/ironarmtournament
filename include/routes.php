<?php
// Autoload files using composer
require_once __DIR__ . '\vendor\autoload.php';

// Create Router instance
$router = new \Bramus\Router\Router();

$router->get('/', function() {
	global $identif;
   	$identif = 'index';
});

$router->run();