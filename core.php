<?php

//https://github.com/mubbi/custom-PHP-framework
define('ASSETS', 'assets/');
define('CONTROLLER', 'controllers/');
define('LIBRARIES', 'libraries/');
define('MODELS', 'models/');
define('VIEWS', 'views/');

$path = $_GET["path"];

$controller = getControllerByPath($path);
$action = getActionByPath($path);

// Verify Controller
if (!file_exists(CONTROLLER . $controller . 'Controller.php')) {
    die('Controller: ' . $controller . ' file does not exist');
}

// Include Controller
include CONTROLLER . $controller . 'Controller.php';
$controllerClass = $controller. 'Controller';

// Verify Controller Class
if (!class_exists($controllerClass)) {
    die('Class: ' . $controllerClass . '  does not exist');
}

// Instantiate Controller Class
$objController = new $controllerClass;

// Verify Action Method
if (!method_exists($objController, $action)) {
    die('Class Method: ' . $action . ' does not exists');
}

// Start the App
$objController->$action();


function getControllerByPath($path){
    return "Home";    
}

function getActionByPath($path){
    return "index";
}
