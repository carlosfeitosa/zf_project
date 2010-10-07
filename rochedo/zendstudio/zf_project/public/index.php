<?php

// Define path to application directory
defined('APPLICATION_PATH')
    || define('APPLICATION_PATH', realpath(dirname(__FILE__) . '/../application'));

// Define path to public directory
defined('PUBLIC_PATH')
    || define('PUBLIC_PATH', realpath(dirname(__FILE__)));
    
// Define path to application modules directory
defined('APPLICATION_MODULE_PATH')
    || define('APPLICATION_MODULE_PATH', APPLICATION_PATH . '/modules');

// Define application environment
defined('APPLICATION_ENV')
    || define('APPLICATION_ENV', (getenv('APPLICATION_ENV') ? getenv('APPLICATION_ENV') : 'production'));
    
// Define application development database environment
defined('APPLICATION_DATABASE_DESENV_DBNAME')
    || define('APPLICATION_DATABASE_DESENV_DBNAME', (getenv('APPLICATION_DATABASE_DESENV_DBNAME') ? getenv('APPLICATION_DATABASE_DESENV_DBNAME') : ''));
defined('APPLICATION_DATABASE_DESENV_USERNAME')
    || define('APPLICATION_DATABASE_DESENV_USERNAME', (getenv('APPLICATION_DATABASE_DESENV_USERNAME') ? getenv('APPLICATION_DATABASE_DESENV_USERNAME') : ''));
defined('APPLICATION_DATABASE_DESENV_PASSWORD')
    || define('APPLICATION_DATABASE_DESENV_PASSWORD', (getenv('APPLICATION_DATABASE_DESENV_PASSWORD') ? getenv('APPLICATION_DATABASE_DESENV_PASSWORD') : ''));
defined('APPLICATION_SYSTEM_LOGIN')
    || define('APPLICATION_SYSTEM_LOGIN', (getenv('APPLICATION_SYSTEM_LOGIN') ? getenv('APPLICATION_SYSTEM_LOGIN') : ''));

// Ensure library/ is on include_path
set_include_path(implode(PATH_SEPARATOR, array(
    realpath(APPLICATION_PATH . '/../library'),
    get_include_path(),
)));

/** Zend_Application */
require_once 'Zend/Application.php';  

// Create application, bootstrap, and run
$application = new Zend_Application(
    APPLICATION_ENV, 
    APPLICATION_PATH . '/configs/application.ini'
);

// verificando se a aplicacao pode se inicializar
Basico_UtilControllerController::checaInit($application);

$application->bootstrap()
            ->run();